package br.bhaskara;

public class BhaskaraCalculo {
    
    private float a;
    private float b;
    private float c;
    private float delta;
    private float x1;
    private float x2;

    public float getA() {
        return a;
    }

    public void setA(float a) {
        this.a = a;
    }

    public float getB() {
        return b;
    }

    public void setB(float b) {
        this.b = b;
    }

    public float getC() {
        return c;
    }

    public void setC(float c) {
        this.c = c;
    }

    public float getDelta() {
        calculaDelta();
        return delta;
    }

    public void setDelta(float delta) {
        this.delta = delta;
    }

    public float getX1() {
        return x1;
    }

    public void setX1(float x1) {
        this.x1 = x1;
    }

    public float getX2() {
        return x2;
    }

    public void setX2(float x2) {
        this.x2 = x2;
    }
    
    public void calculaDelta() {
        delta = (b * b) - (4 * a * c);
    }
    
    public float calculaX1() {
        calculaDelta();
        x1 = (float) ((-b + Math.sqrt(delta)) / (2 * a));
        return x1;
    }
    
    public float calculaX2() {
        calculaDelta();
        x2 = (float) ((-b - Math.sqrt(delta)) / (2 * a));
        return x2;
    }
}
