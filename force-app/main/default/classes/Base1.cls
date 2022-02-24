public virtual class Base1 
{
    public Base1()
    {
        System.debug('Unparameterised Base1');
    }
    public Base1(String a)
    {
        System.debug('parameterised'+'Base1');
    }
    public void display()
    {
        System.debug('display Base1....');
    }

}