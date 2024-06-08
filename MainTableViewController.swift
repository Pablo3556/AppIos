//
//  MainTableViewController.swift
//  appJunio
//
//  Created by Pablo on 7/6/24.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var movies = [Movie]()
    override func viewDidLoad() {
        super.viewDidLoad()

        let movie1 = Movie(title: "US", description: "dfasdfjkhlsadfkhjsdhjklfjhskdlf", year: "2006", imageView: UIImage (named: "movie1")!)
        let movie2 = Movie(title: "US", description: "dfasdfjkhlsadfkhjsdhjklfjhskdlf", year: "2006", imageView: UIImage (named: "movie5")!)
        let movie3 = Movie(title: "US", description: "dfasdfjkhlsadfkhjsdhjklfjhskdlf", year: "2006", imageView: UIImage (named: "movie4")!)
        let movie4 = Movie(title: "US", description: "dfasdfjkhlsadfkhjsdhjklfjhskdlf", year: "2006", imageView: UIImage (named: "movie2")!)
        let movie5 = Movie(title: "US", description: "dfasdfjkhlsadfkhjsdhjklfjhskdlf", year: "2006", imageView: UIImage (named: "movie3")!)
        movies = [movie1,movie2,movie3,movie4, movie5]
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 142
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "celda", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //acceder al vc destino
        let detailVc = segue.destination as! DescriptionView
        
        //obtener la celda pulsada
        let selectedRow = tableView.indexPathForSelectedRow!.row
        
        //cons esa celda pulsada,recuperar la pelicula que sea y especificarla detailViewController
        detailVc.Title = movies[selectedRow].title
        detailVc.Year = movies[selectedRow].year
        detailVc.descrip = movies[selectedRow].description

    
        detailVc.imageMovie = movies[selectedRow].imageView
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! MainTableViewCell

        // Configure the cell...
        cell.Title.text = movies[indexPath.row].title
        cell.Description.text = movies[indexPath.row].description
        cell.Year.text = movies[indexPath.row].year
        cell.ImageView.image = movies[indexPath.row].imageView
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
