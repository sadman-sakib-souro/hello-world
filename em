    void employeeInterface() {
        String employeePass = "";
        Scanner in = new Scanner(System.in);
        String key = "";
        String choice = "";
        String a = "";

        System.out.println(" Enter your employee pass ");
        employeePass = in.next();
        if (searchInfo(employeePass)) {

            // statements 
            System.out.println(" press 1 to delete an account from master doc ");
            System.out.println(" press 2 to add an account to master doc ");
            System.out.println(" Press 3 to add employee password ");
            System.out.println(" Press 4 to delete employee pass ");

            // input 
            choice = in.next();

            switch (choice) {
                case "1":
                    WriteStuff_Test ob = new WriteStuff_Test();
                    ob.DeleteAccount();
                    break;
                case "2":
                    WriteStuff_Test ob1 = new WriteStuff_Test();
                    ob1.AddAccount();
                    break;
                case "3":
                    AddPass();
                    break;
                case "4":
                    DeletePassword();
                    break;
            }

        } else {
            System.out.println(" invalid password");
            System.out.println(" Press t/T to try again or press anyother letter to quit ");
            if(in.next() == "t" || in.next() == "T"){
                employeeInterface();
            }
            
        }

    }
