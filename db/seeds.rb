Question.create([
  {
    content: "What is your name?"
  },
  {
    content: "What is your email?"
  },
  {
    content: "What is your Github url?"
  },
  {
    content: "What is your LinkedIn url?"
  },
  {
    content: "Can you tell us why we asked you to fork this repo instead of clone it?"
  },
  {
    content: "Tell us about your favorite coding project of all time? What was great about it?"
  },
  {
    content: "What is your favorite book series of all time?"
  },
  {
    content: "Cocktails or beer?"
  }
])

Answer.create([
  {
    content: "Antonio Federico Hipolito Goseco David, Jr. - but most people call me Ajay. That comes from 'Antonio Junior'. Now where the extra '-ay' came from still leaves me scratching my head.",
    question_id: 1
  },
  {
    content: "antonio.g.david@gmail.com",
    question_id: 2
  },
  {
    content: "github.com/agdavid -- check out the link to my repo in the footer!",
    question_id: 3
  },
  {
    content: "linkedin.com/in/agdavid -- i'd love to connect, again in the footer!",
    question_id: 4
  },
  {
    content: "Overall, I believe that forking is the preferred method of version control because it allows maintenance of an original codebase with access, but not immediate alteration rights, for a collaborator. In a forked repository, I have write access and can push changes, but contributions are made and vetted as pull requests. In a team setting, it's a great way to work together and only merge code when it is spot-on, bug-free!",
    question_id: 5
  },
  {
    content: "The most fun and amazing coding project of mine has been the AllergyFreeMeals app (www.allergyfreemeals.herokuapp.com) because it brought together my JavaScript and Rails knowledge, all for a greater purpose. Meals are a key part of everyone's day, but, more importantly they are a way that people interact socially and bond. From personal experience with my sister and nephew, I saw how isolating it could be to be unable to eat the same foods as everyone else. I came up with AllergyFreeMeals so that you could create and source delicious meals from an allergy-conscious community. It even has 'search-by-allergen' functionality for filtering recipes that meet your specific needs. It was great to use coding skills and leverage jQuery, AJAX and ActiveModelSerializers all for a greater purpose of this application.
",
    question_id: 6
  },
  {
    content: "Wheel of Time by Robert Jordan (and his protege Brandon Sanderson is pretty great, as well!).",
    question_id: 7
  },
  {
    content: "Beers - sour beers - which is why the focus of my next application is sour breweries across the US.",
    question_id: 8
  }
])