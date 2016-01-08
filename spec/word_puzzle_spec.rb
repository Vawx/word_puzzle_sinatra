require('rspec')
require('word_puzzle')

describe("String#word_puzzle") do
  it("replaces the vowels in a word with -") do
    expect("areas".word_puzzle).to(eq("-r--s"))
  end
  it("replaces the vowels in a sentence of words with -") do
    expect("Believe you can and you're halfway there. Theodore Roosevelt".word_puzzle).to(eq("B-l--v- y-- c-n -nd y--'r- h-lfw-y th-r-. Th--d-r- R--s-v-lt"))
  end
  it("replaces vowels in a very large piece of text with -") do
    expect("Down the Rabbit Hole: Alice is feeling bored and drowsy while sitting on the riverbank with her elder sister who is reading a book with no pictures or conversations. She then notices a talking, clothed White Rabbit with a pocket watch run past. She follows it down a rabbit hole when suddenly she falls a long way to a curious hall with many locked doors of all sizes. She finds a small key to a door too small for her to fit through, but through it she sees an attractive garden. She then discovers a bottle on a table labelled DRINK ME, the contents of which cause her to shrink too small to reach the key which she has left on the table. She eats a cake with EAT ME written on it in currants as the chapter closes.".word_puzzle).to(eq("D-wn th- R-bb-t H-l-: -l-c- -s f--l-ng b-r-d -nd dr-wsy wh-l- s-tt-ng -n th- r-v-rb-nk w-th h-r -ld-r s-st-r wh- -s r--d-ng - b--k w-th n- p-ct-r-s -r c-nv-rs-t--ns. Sh- th-n n-t-c-s - t-lk-ng, cl-th-d Wh-t- R-bb-t w-th - p-ck-t w-tch r-n p-st. Sh- f-ll-ws -t d-wn - r-bb-t h-l- wh-n s-dd-nly sh- f-lls - l-ng w-y t- - c-r---s h-ll w-th m-ny l-ck-d d--rs -f -ll s-z-s. Sh- f-nds - sm-ll k-y t- - d--r t-- sm-ll f-r h-r t- f-t thr--gh, b-t thr--gh -t sh- s--s -n -ttr-ct-v- g-rd-n. Sh- th-n d-sc-v-rs - b-ttl- -n - t-bl- l-b-ll-d DR-NK M-, th- c-nt-nts -f wh-ch c--s- h-r t- shr-nk t-- sm-ll t- r--ch th- k-y wh-ch sh- h-s l-ft -n th- t-bl-. Sh- --ts - c-k- w-th --T M- wr-tt-n -n -t -n c-rr-nts -s th- ch-pt-r cl-s-s."))
  end
  it("handles words that have capital letters in them and replaces any vowels with -") do
    expect("Expect thIs tO work".word_puzzle).to(eq("-xp-ct th-s t- w-rk"))
  end
end
