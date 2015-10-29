//
//  FamousMoviesTableViewController.swift
//  Famous Movies, Famous Quotes
//
//  Created by Mounika Ankam on 3/1/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class FamousMoviesTableViewController: UITableViewController {

    var famousMovies:[FamousMovie]=[FamousMovie(name:"The Lazarous", director:"Lance Bangs", year:2015, famousquotes :["Reannimation Horror","Restoration of life"]),
        FamousMovie(name:"Dookudu", director:"Srinu Vaitla", year:2011, famousquotes :["Tragicomedy","Stay Strong"]),
        FamousMovie(name:"Robo", director:"Shankar", year:2010, famousquotes :["Most Expensive Film","generate Human Motions"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return famousMovies.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("famous_movie", forIndexPath: indexPath) as UITableViewCell
        var name:UILabel = cell.viewWithTag(100) as UILabel
        var director:UILabel = cell.viewWithTag(110) as UILabel
        var year:UILabel = cell.viewWithTag(120) as UILabel
        
        name.text = famousMovies[indexPath.row].name
        director.text = famousMovies[indexPath.row].director
        year.text = famousMovies[indexPath.row].year.description
        // Configure the cell...
        
        return cell
    }
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var famousQuotesTVC:FamousQuotesTableViewController = storyboard?.instantiateViewControllerWithIdentifier("famous_quotes")as FamousQuotesTableViewController
        famousQuotesTVC.famousMovieName = famousMovies[indexPath.row].name
        famousQuotesTVC.famousQuotes = famousMovies[indexPath.row].famousquotes
        self.navigationController?.pushViewController(famousQuotesTVC, animated: true)
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
