import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        System.out.println("WITAJ W APLIKACJI KRADNĄCEJ DANE Z INTERNETU\nZaloguj się loginem i hasłem");
        Scanner scanner = new Scanner(System.in);
        System.out.println("Login: ");
        String login = scanner.next();
        System.out.println("Hasło");
        String pasword = scanner.next();

        Login loginSystem = new Login(login,pasword);
        if(loginSystem.canLog()){

            int option = 1;
            while(option != 0){
                System.out.println("ZALOGOWANO\nMożliwe działania\n1.Pobierz oferty do bazy\n2.Wyświetl oferty\nInne: wyjście");
                option = scanner.nextInt();
                if (option == 1){
                    OptionSystem.option1();
                }else if(option == 2){
                    OptionSystem.option2();
                }else{
                   break;
                }
            }
        }else{
            System.out.println("BŁĘDNE LOGIN LUB HASŁO");
        }
    }

}
