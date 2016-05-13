Candidate.create([
  {name: 'Hilary Clinton', party: 'Democratic', title: 'Former Screctary of State'},
  {name: 'Bernie Sanders', party: 'Democratic', title: 'Senator, Vermont'},
  {name: 'Donald Trump', party: 'Republican', title: 'Former Screctary of State'},
  {name: 'Ted Cruz', party: 'Republican', title: 'Senator, Vermont'}
])

Issue.create([
  {
    title: 'Should the government increase environmental regulations to prevent global warming?', 
    description: 'Global warming, or climate change, is an increase in the earth\'s atmospheric temperature since the late nineteenth century. In politics the debate over global warming is centered on whether this increase in temperature is due to greenhouse gas emissions or is the result of a natural pattern in the earth\'s temperature.', 
    category: 'Environment' 
  }, {
    title: 'Should national parks be preserved and protected by the federal government?', 
    description: 'The U.S. currently has 59 areas of land in 27 different states that are designated as National Parks by the federal government. The National Park Service Organic Act was signed into law in 1916 "To conserve the scenery and the natural and historic objects and wild life therein and to provide for the enjoyment of the same in such manner and by such means as will leave them unimpaired for the enjoyment of future generations.', 
    category: 'Environment' 
  }, {
    title: 'Should producers be required to label genetically engineered foods (GMOs)?', 
    description: 'Currently, GMO (Genetically Modified Organism) foods in the United States are not classified differently by the FDA and do not require labeling. Although no reports of ill effects from GMO foods have been documented, advocacy groups such as Greenpeace and the Organic Consumers Association argue that past studies cannot be trusted because they were sponsored by pro-GMO companies and do not measure the long-term effects on humans, the environment, and nature. Opponents argue that labeling adds an unfounded stigma over organic foods and that if a nutritional or allergenic difference were found, current FDA regulations would already require a label.', 
    category: 'Environment' 
  }, {
    title: 'Should working illegal immigrants be given temporary amnesty?', 
    description: 'Amnesty is an act by passed by the federal government which grants immunity from immigration laws to undocumented immigrants currently living in the U.S. Various levels of criteria have been proposed for immigrants to be granted amnesty including proof of employment and willingness to pay taxes', 
    category: 'Immigration' 
  }, {
    title: 'Should Muslim immigrants be banned from entering the country until the government improves its ability to screen out potential terrorists?', 
    description: 'Proponents argue that the government has little idea who is entering the U.S. through its current immigration system and that a temporary ban on Muslims is necessary after the terrorist attack in California. Opponents argue that the proposed ban is unconstitutional and racist towards Muslims.', 
    category: 'Immigration' 
  }, {
    title: 'Should illegal immigrants have access to government-subsidized healthcare?', 
    description: 'Illegal immigrants, as well as legal immigrants in the country less than five years, are not eligible for free healthcare through Medicaid. A 2007 study estimated that less than 1 percent of Medicaid spending went to healthcare for illegal immigrants. Proponents of subsidized healthcare for immigrants argue that increased access to basic preventive care will lower the demand for costly emergency care. Opponents argue that immigrants in the healthcare system run the risk of becoming "permanent patients," because they have no relatives, insurance or an established address where they can go once released.', 
    category: 'Immigration' 
  }, {
    title: 'Should victims of gun violence be allowed to sue firearms dealers and manufacturers?', 
    description: 'In 2005, Congress passed the Protection of Lawful Commerce in Arms Act (PLCAA). The law protects gun manufacturers and dealers from being held liable when crimes have been committed with their products. The law was passed in response to a series of lawsuits filed against the gun industry in the late 1990s which claimed gun-makers and sellers were not doing enough to prevent crimes committed with their products. Proponents of the law argue that lawsuits will discourage gun manufacturers from supplying stores who sell guns that end up being used in violent crimes. Opponents argue that gun manufacturers are not responsible for random acts of violence committed with their products', 
    category: 'Domestic Policy' 
  }, {
    title: 'Are you in favor of decriminalizing drug use?', 
    description: 'In 1970, Congress passed the Controlled Substances Act which banned the manufacture, importation, possession, use and distribution of certain drugs. The act ranked drugs by their potential for abuse and placed them into five categories. Two of the most widely used drugs in the U.S., wine and alcohol, are exempt from the classifications. Ballot measures in several states including Colorado, Washington and Oregon have decriminalized possession of small amounts of marijuana. These laws apply only within the respective states and have no effect on Federal law.', 
    category: 'Domestic Policy' 
  }, {
    title: 'Should the NSA (National Security Agency) be allowed to collect basic metadata of citizen\’s phone calls such as numbers, timestamps, and call durations?', 
    description: 'Under a provision of the Patriot Act the NSA is allowed to collect phone metadata — the numbers, time stamps, and duration of a call, but not its actual content. Opponents include civil liberties advocates and Senator Rand Paul who argue that the collection is unconstitutional since it is done without a warrant. Supporters of the collection argue that the collection is necessary to track suspected terrorists.', 
    category: 'Domestic Policy' 
  }, {
    title: 'Should the U.S. accept refugees from Syria?', 
    description: 'President Obama recently declared that the U.S. will accept 10,000 refugees from Syria. The U.S. has been under pressure from its Syrian allies to help out with the crisis in which 3 Million refugees have fled Syria in the past year. Those in favor of accepting refugees believe that the U.S. has a duty to join its allies in Europe and accept at least 10,000 refugees. Opponents argue that the U.S. should stay out of this crisis and accepting refugees from the Middle East leads to a risk of letting terrorists into our borders.', 
    category: 'Foreign Policy' 
  }, {
    title: 'Should the U.S. continue to support Israel?', 
    description: 'The U.S. currently gives $3.3 billion to Israel every year, which is 1/3rd of the U.S.’s foreign aid budget. Most of the aid is used by Israel to buy American military hardware, such as jets and components for missile defense.', 
    category: 'Foreign Policy' 
  }, {
    title: 'Should the U.S. remain in the United Nations?', 
    description: 'The United Nations was formed in 1945 by the U.S., Soviet Union, U.K. and China as an Intergovernmental organization that would international co-operation after World War II. Recent U.N. interventions include the Sri Lankan civil war in 2009 and the 2010 earthquake in Haiti.', 
    category: 'Foreign Policy' 
  }, {
    title: 'Do you support the Patient Protection and Affordable Care Act (Obamacare)?', 
    description: 'The Affordable Care Act is a federal statute signed into law in 2010 that introduces a sweeping overhaul of the nation\'s healthcare system. The act grants the federal government significant regulatory powers and price controls over U.S. medical service providers and insurance companies.', 
    category: 'Health Care' 
  }, {
    title: 'Should the federal government require children to be vaccinated for preventable diseases?', 
    description: 'In January 2014, 102 measles cases linked to an outbreak at Disneyland were reported in 14 states. The outbreak alarmed the CDC, which declared the disease eliminated in the U.S. in the year 2000. Many health officials have tied the outbreak to the rising number of unvaccinated children under the age of 12. Proponents of a mandate argue that vaccines are necessary in order to insure herd immunity against preventable diseases. Herd immunity protects people who are unable to get vaccines due to their age or health condition. Opponents of a mandate believe the government should not be able to decide which vaccines their children should receive. Some opponents also believe there is a link between vaccinations and autism and vaccinating their children will have destructive consequences on their early childhood development.', 
    category: 'Health Care' 
  }, {
    title: 'Should the federal government increase funding of health care for low income individuals (Medicaid)?', 
    description: 'When the Affordable Care Act (Obamacare) was enacted in 2010 it required all states to expand their Medicaid programs to include people with incomes slightly higher than those allowed under traditional Medicaid, as well as groups, like childless adults, that had not previously been covered. In 2012 the Supreme Court ruled that forcing States to expand their Medicaid coverage was unconstitutional. Since then 22 states have expanded their coverage and more than 35 have opted not to do so. Proponents of the expansion argue that it will lower healthcare costs for everyone by reducing the number of Americans without health insurance. Opponents argue that states should be allowed to run their own Medicaid programs without the intervention of the federal government.', 
    category: 'Health Care' 
  }

])

Reaction.create([
  {text: 'What!? No! That\'s an awful idea? Who could support that?', agreement: 1, issue_id: 5, candidate_id: 1 },
  {text: 'Absolutely. We need to make America Great Again.', agreement: 5, issue_id: 5, candidate_id: 3 },
  {text: 'We need regulations, but that is extreme', agreement: 4, issue_id: 5, candidate_id: 4 },
  {text: 'That would be an extreme miscarrage of justice', agreement: 1, issue_id: 5, candidate_id: 2}
])