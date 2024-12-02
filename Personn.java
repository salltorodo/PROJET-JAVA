public class Personn {
    private String nom;
    private String prenom;
    private String dateNaissance;

    public Personn(String nom, String prenom, String dateNaissance) {
        nom = nom;
        prenom = prenom;
        dateNaissance = dateNaissance;
    }

    public void afficher() {
        System.out.println("Nom: " + nom + ", Prénom: " + prenom + ", Date de naissance: " + dateNaissance);
    }
}
