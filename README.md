# nef

**Εισαγωγή**

Στόχος της εργασίας μου είναι να παίξω δύο jumping pattern της Carnatic music μέσω του SuperCollider.

θα χρησιμοποιήσω τις τεχνικές που διδάχθηκα στα πλαίσια του μαθήματος «Μουσική πληροφορική» για να μπορέσω 
να το πετύχω.


**Περιγραφή**

Εχω επιλέξει δυο pattern απο το video 
https://www.youtube.com/watch?v=ESCbw9Ph9m4&list=RDZnObqYfb-0M&index=13. 

Θα ξεκινήσω φτιάχνοντας ενα απλό Pattern. Θα δείξω τον τρόπο οπου το pattern αυτό μπορώ να το μεταθέσω σε ψηλότερες συχνότητες,

Θα προσθέσω κλίμακες στο κώδικα  και θα παίξω τα patterns το ένα με την Raga Maya Malava Goula και το άλλο 
με τη Raga Shankarabharanam.

**Πρώτο Pattern**

(1.12 sec από το video)

// S-R-S-G-R-M-G-R-S--->P-D-P-N-D-Ṡ-N-D-P--->Ṡ-Ṙ-Ṡ-Ġ-Ṙ-Ṁ-Ġ-Ṙ- Ṡ

 **Pbind(\dur, 0.2, \degree, Pseq([0, 1, 0, 2, 1, 3, 2, 1, 0], 1), \amp, 0.2).play;**
 
 (Φτιάχνω το πρώτο pattern, σαν λίστα 0, 1, 0, 2, 1, 3, 2, 1, 0 το οποίο παίζει μια φορά)
 
**~pat1 = Pseq([0, 1, 0, 2, 1, 3, 2, 1, 0], 1);**

 (για διευκόλυνση βάζω το pattern στη μεταβλητή ~pat1 και στη συνέχεια θα χρησιμοποιώ αυτήν)
 
 **Pbind(\dur, 0.2, \degree, ~pat1 + 4, \amp, 0.2).play;**
 
(μεταθέτω το pattern κατά 4 θέσεις )

**Pbind(\dur, 0.2, \degree, ~pat1 + 7, \amp, 0.2).play;**

(μεταθέτω το pattern κατά μια οκτάβα από την αρχική θέση )

**Pbind(\dur, 0.2, \degree, Pseq([~pat1, \, \, ~pat1 + 4, \, \, ~pat1 + 7]), \amp, 0.2).play;**

( Έχω βάλει το αρχικό pattern και τις 2 μετατοπίσεις σε ένα Pseq ώστε να εκτελεστούν το ένα μετα το άλλο. 
 Για να είναι ευδιάκριτα έχω προσθέσει από δύο κενές νότες ενδιάμεσα στο κάθε pattern).
 
(Αντικαθιστώ το dur με ένα pattern, όπου η κάθε νότα θα παίρνει την διάρκεια από το pattern και η τελευταία νότα θα  έχει μεγαλύτερη διάρκεια. Χρησιμοποιώ την μεταβλητή ~durs για το pattern).

**~durs = Pseq([0.20, 0.20, 0.20, 0.20, 0.20,  0.20, 0.20, 0.20, 0.80], inf);**

**Pbind(\dur,~durs , \degree, Pseq([~pat1,~pat1 + 4, ~pat1 + 7]), \amp, 0.2).trace.play;**

( Aντικαθιστώ το dur 0,2 με το pattern ~durs. Χρησιμοποίησα το trace μαζί με το play έτσι ώστε να βλέπω στο post window την εκτέλεση του).  

Θα φτιάξω την Raga Maya Malava Goula από το video 
https://www.youtube.com/watch?v=OwPXH4gZitw&list=RDOwPXH4gZitw&start_radio=1.

(Μια Raga στην καρνατική μουσική ορίζει τους κανόνες για να φτιαχτεί μια μελωδία. Η Raga Maya Malava Goula  είναι η πιο βασική Raga της καρνατικής μουσικής. Είναι αυτή με την οποία  ξεκινάει η εκπαίδευση εκείνων που θέλουν να μάθουν αυτή τη μουσική. Ο πρώτος λόγος είναι ότι αποτελείται και από τα 7 swaras έχει  και aarohanam (αύξουσα κλίμακα) και avarohanam και ο δεύτερος είναι η συμμετρία.)

(φτιάχνω την κλίμακα και με το όνομα που της εχω δώσει italics mayamalavagoula italics θα παίξω τα patterns).

**Scale.all.put(\mayamalavagoula, Scale([0, 1, 4, 5, 7, 8, 11]));**

**Pbind(\dur,~durs, \degree, Pseq([~pat1, ~pat1 + 4, ~pat1 + 7]), \amp, 0.2,
	\scale, Scale.mayamalavagoula
).play; **




