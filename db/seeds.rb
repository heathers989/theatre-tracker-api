# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Musical.create([
  { name: "Moulin Rouge! The Musical", 
    cast: ['Karen Olivo', 'Aaron Tveit', 'Danny Burnstein', 'Sahr Ngaujah', 'Tam Mutu', 'Ricky Rojas', 'Robyn Hurder', 'Jacqueline B. Arnold', 'Holly James', 'Jeigh Madjus'],
    understudies: ['Ashley Loren', 'Amber Ardolino', 'Aaron Finley', 'Brandt Martinez', 'Caleb Marshall', 'Austin Durant', 'Kevin Curtis', 'Jodi McFadden', 'Kevyn Morrow', 'Morgan Marcell', 'Dylan Paul'],
    theater: 'Al Hirschfeld Theatre',
    playbill: 'https://bsp-static.playbill.com/dims4/default/04abed6/2147483647/resize/x250%3C/quality/90/?url=http%3A%2F%2Fpb-asset-replication.s3.amazonaws.com%2Fa0%2F89%2Fd6cc28fa4f33b807d3a45774ea38%2Fmouling-rouge-playbill-2019-06-28-web.jpg'
  }
])

Review.create([
    {
        reviewer_name: 'Heather',
        musical_id: 1,
        date_of_show: '2020-01-26',
        cast_to_see: 'Aaron Tveit',
        if_understudies: true,
        understudies_seen: ['Ashley Loren', 'Dylan Paul'],
        rating: 5,
        if_stagedoor: true,
        at_stagedoor: ['Danny Burnstein', 'Jeigh Madjus', 'Ashley Loren'],
        comments: 'Loved seeing the show again! Dylan and Ashley were both great and Aaron gave a moving and powerful performance as always!'

    }
])