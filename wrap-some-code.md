#Getting clojure - wrap some code around data.

Recently FOMO got to me and I jumped on crypto speculation game. You gots to do bunch of accounting/counting/reconciling/tracking in it. Sounds boring, but clojure made it kinda fun. And that's what I want to share here.

There's plenty of portfolio tracking tools on the nets. If it wasn't for clojure I would go for one of those and would reluctantly giveout info about my trades to a third party. Rather that though than teaching C# or java compiler about structure of my data with classes/structs so that I can start deriving info from it. Even with dynamic Python it would be a hassle.

#Wrap some code around data

Instead of waxing poetic about simplicity, I would best describe hacking on clojure as "wrap some code around data". Let me ilustrate. In my crypto game, I have a bunch of transactions - facts about buying/selling cryptos and deposits I sent into the exchange. When I make a transaction I append it to an EDN file "transactions.edn":

##Transaction log - "transactions.edn"
```
{
 :deposit 
  [ 
   ^{:date #inst "2020-04-02"} [2742] 
   ^{:date #inst "2020-04-07"} [4200]
  ]
  :buy ;[symbol amount unit-price]
  [ 
     ^{:date #inst "2020-04-02"} [:FIL 11 146.02473684210526]
     ^{:date #inst "2020-04-08"} [:DOGE 20000 0.05223200000000001]
     ^{:date #inst "2020-04-09"} [:LTC 5 192.82999999999998]
     ^{:date #inst "2020-04-11"} [:XRP 450 1.1966222222222223]
     ^{:date #inst "2020-05-10" 
       :fee 15.31 :txfe0 27.58}  [:ETH 0.3 3453.0333333]
     ^{:date #inst "2020-05-20"} [:XRP 150 0.9904]
     ^{:date #inst "2020-05-24"} [:XRP 140 0.71428571428]
  ]
 :sell ;[symbol amount at-unit-price for-unit-price]
  [
    ^{:date #inst "2020-04-17"} [:DOGE 20000 0.05223200000000001 0.2255935]
  ] 
}
```
It's a map with 3 kinds of transactions: :deposit, :buy, :sell. Transaction is an array (vector) that has a tag of a crypto, amount and price. Dates are metadata about my transactions and clojure has a notion of [metadata] (https://clojure.org/reference/metadata) built-in, you can attach it to the peace of data (like an array), read it when you want it, but keep it out of the way of calculations. Tags are importand to designate data, it's built-in into clojure too. Data that starts with a colon is a tag. Clojure calls those [keywords] (https://clojure.org/reference/data_structures#Keywords).

Time to wrap some code around my transactions to start deriving info about how am I doing in the crypto game. First, I want to know my position - the aggregated price of each of my purchased cryptos, compare it to the current market price, calculate the diffs, sum-up the diffs to get the totals. So I create a portfolio.clj file, load my transactions with one liner, and wrap some code on it:

```
(let [{:keys [deposit buy sell]} (load-file "transactions.edn")
   ;pseudo code to derive info from my transaction log:
  (print-table
    (position 
       (market-data (tags buy))
       (aggregated buy sell))))
```

This line: `(let [{:keys [deposit buy sell]} (load-file "transactions.edn")` makes all my different kinds of transactions available for analysis *IN datastructures I need them in (arrays, maps) populated with typed data.* Numbers are numbers (floats, ints doubles etc.). Strings, dates, tags (keywords) and metadata are automagically parsed, typed and ready for me. This is not your JSONs.

The beauty is that I get all this pretty much out of the box. Clojure is ready to work with your data. In it's [core] (https://clojuredocs.org/clojure.core "clojure core") it has multitude of functions ready to be wrapped around it.

#Data sits in the center

Further, I need accounting info for reconciliation with an exchange, I need alerts for lucrative market changes, I need market info on cryptos I keep my eye on etc...
All of those modules I coded *gradually* in dedicated files that orbit the transaction log. Data in transactions.edn is what drives them in metaprogramming fashion. 

#Data all the things!!!

First thing that looks weird about clojure to newcomers is the parenthesis tangle. It's because you're looking at it wrong. Look at it as data - *code is data*.

<table>
    <tr>
        <td>This is clearly data, right?</td>  <td>How about this then?</td>
    </tr>
    <tr>
        <td>
        ```
            <Position>
              <MarketData>
                 <Tags buy />
              </MarketData>
              <Aggregated buy sell />
            </Position>
        ```
        </td>
        <td>
        ```
              (position 
                   (market-data (tags buy))
                   (aggregated buy sell))
        ```
        </td>
    </tr>
</table>
Instead of `<Position><MarketData>...</MarketData>...</Position>` you write `(position (market-data ...)...)` see what I mean? You are literally writing data. Evaluatable data. Data you can wrap with more evaluatable data (code) and process. In clojure *everything nests* just as in JSON or XML. In clojure *everything is an expression*, meaning, every data element (things in between parentehsis) is transformable to other data. You evaluate data to get data. Enriched or specialized or more informative data.
What else you can do with data? Manipulate it with code of course! Emm... Code is data... Manipulate data with code... :exploding_head:
You can also store it for later manipulation/evaluation. Or perhaps send it to another data precessor that wraps it, evaluates it and spits out more evaluatable data. You can compose those data evaluators in pipes-and-filters fashion. Or hub-and-spoke them as in my example where data evaluators orbit the central data store.

