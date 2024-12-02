public class Eleve extends Personne {
    private int matricule;
    private int groupeId;

    public Eleve(int matricule, String nom, String prenom, String dateNaissance, int groupeId) {
        
        matricule = matricule;
        groupeId = groupeId;
    

    
    public void afficher() {
        
        System.out.println("Matricule: " + matricule + ", Groupe ID: " + groupeId);
    }
}
}