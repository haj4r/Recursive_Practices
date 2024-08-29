/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 * @author hajarismail and sarahyasmin
 */
public class RecursiveDescentParser {

    private String input;
    private int index;

    public RecursiveDescentParser(String input) {
        this.input = input;
        this.index = 0;
    }

    private char peek() {
        return index < input.length() ? input.charAt(index) : '\0';
    }

    private char consume() {
        return input.charAt(index++);
    }

    public boolean parse() {
        return Expr() && index == input.length();
    }

    private boolean Expr() {
        return Term() && Elist();
    }

    private boolean Elist() {
        if (peek() == '+') {
            consume();
            return Term() && Elist();
        } else if (peek() == '/') {
            consume();
            return Term() && Elist();
        } else {
            return true; // ε
        }
    }

    private boolean Tlist() {
        if (peek() == '*') {
            consume();
            return Factor() && Tlist();
        } else if (peek() == '-') {
            consume();
            return Factor() && Tlist();
        } else {
            return true; // ε
        }
    }

    private boolean Term() {
        return Factor() && Tlist();
    }

    private boolean Factor() {
        if (peek() == '(') {
            consume();
            if (Expr() && peek() == ')') {
                consume();
                return true;
            }
            return false;
        } else if (Character.isLetter(peek())) {
            return Var();
        } else if (Character.isDigit(peek())) {
            return Num();
        }
        return false;
    }

    private boolean Var() {
        if (Character.isLetter(peek())) {
            consume();
            while (Character.isLetterOrDigit(peek())) {
                consume();
            }
            return true;
        }
        return false;
    }

    private boolean Num() {
        if (Character.isDigit(peek())) {
            consume();
            while (Character.isDigit(peek())) {
                consume();
            }
            return true;
        }
        return false;
    }
}
