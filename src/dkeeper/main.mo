import List "mo:base/List";
import Debug "mo:base/Debug";

actor DKeeper {

  public type note = {
    title: Text;
    content: Text;
  };

  stable var notes: List.List<note> = List.nil<note>();

  public func createNote(titleText:Text, contentText:Text){
    var newNote = {
      title = titleText;
      content = contentText;
    };

  // push() pre-pend item in list
    notes := List.push(newNote, notes);
    Debug.print(debug_show(notes));
  };

  public query func readNotes() : async [note]{
    return List.toArray(notes);
  };

  public func removeNote(id: Nat) {
    var listFront = List.take(notes, id);
    var listBack = List.drop(notes, id+1);
    
    notes := List.append(listFront, listBack);
    Debug.print(debug_show(notes));
  };
}