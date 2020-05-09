//Step 6 - import the story.dart file into this file.
import 'story.dart';

//Step 5 - Create a new class called StoryBrain.
class StoryBrain {
  //Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
  List<Story> _storyData = [
    Story(
        storyTitle:
            'Le pneu de votre voiture vient de crever sur une route sinueuse au milieu de nulle part sans réception de téléphone portable. Vous décidez de faire de l\'auto-stop. Une camionnette rouillée s\'arrête à côté de vous. Un homme au chapeau à larges bords et aux yeux sans âme vous ouvre la portière côté passager et vous demande: "Besoin d\'aide ?".',
        choice1: 'Je monte et le remercie pour l\'aide!',
        choice2: 'Mieux vaut d\'abord lui demander s\'il est un meurtrier.'),
    Story(
        storyTitle: 'Il hoche lentement la tête, sans répondre à la question.',
        choice1: 'Au moins, il est honnête. Je monte.',
        choice2: 'Attendez, je sais comment changer un pneu.'),
    Story(
        storyTitle:
            'Alors que vous commencez à conduire, l\'étranger commence à parler de sa relation avec sa mère. Il devient de plus en plus colérique de minute en minute. Il vous demande d\'ouvrir la boîte à gants. À l\'intérieur, vous trouvez un couteau sanglant, deux doigts coupés et une cassette d\'Elton John. Il tend le bras vers la boîte à gants.',
        choice1: 'J\'adore Elton John! Donnez-lui la cassette.',
        choice2: 'C\'est lui ou moi! Vous prenez le couteau et le poignardez.'),
    Story(
        storyTitle:
            'Quoi ? Vous avez un instinct de flic ! Saviez-vous que les accidents de la circulation sont la deuxième cause de décès accidentel pour la plupart des adultes?',
        choice1: 'Redémarrer',
        choice2: ''),
    Story(
        storyTitle:
            'Alors que vous vous frayez un chemin à travers le garde-corps et que vous vous dirigez vers les rochers déchiquetés en dessous, vous réfléchissez à la sagesse douteuse de poignarder quelqu\'un pendant qu\'il conduit une voiture dans laquelle vous vous trouvez.',
        choice1: 'Redémarrer',
        choice2: ''),
    Story(
        storyTitle:
            'Vous vous liez au meurtrier en chantant les paroles de "L\'amour sous les étoiles". Il vous dépose à la prochaine ville. Avant de partir, il vous demande si vous connaissez de bons endroits pour jeter vos corps. Vous répondez: "Essayez la jetée".',
        choice1: 'Redémarrer',
        choice2: '')
  ];

  // Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

  //Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  // Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  // Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  // Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

  // Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int _storyNumber = 0;

  // Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiceNumber) {
    // Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

    // Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.
    if (_storyNumber == 0) {
      if (choiceNumber == 1) {
        _storyNumber = 2;
      } else if (choiceNumber == 2) {
        _storyNumber = 1;
      }
    } else if (_storyNumber == 1) {
      if (choiceNumber == 1) {
        _storyNumber = 2;
      } else if (choiceNumber == 2) {
        _storyNumber = 3;
      }
    } else if (_storyNumber == 2) {
      if (choiceNumber == 1) {
        _storyNumber = 5;
      } else if (choiceNumber == 2) {
        _storyNumber = 4;
      }
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  // Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
  void restart() {
    _storyNumber = 0;
  }

  // Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  bool buttonShouldBeVisible() {
    return _storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2;
  }
}
