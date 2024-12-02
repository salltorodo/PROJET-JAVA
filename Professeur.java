public class Professeur extends Personne {
    private int id;
    private String domaine;

    public Professeur(int id, String nom, String prenom, String dateNaissance, String domaine) {
        
        id = id;
        domaine = domaine;
    
    
    public void afficher() {
        
        System.out.println("ID: " + id + ", Domaine de spécialisation: " + domaine);
    }
}
}