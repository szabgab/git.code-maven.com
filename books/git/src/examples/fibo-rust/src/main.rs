fn main() {
    let args = std::env::args().collect::<Vec<String>>();
    if args.len() != 2 {
        println!("Usage: {}", &args[0]);
        std::process::exit(1);
    }
    let n = args[1].parse::<u32>().unwrap();

    println!("fibo({n}) = {}", fibo(n));
    //println!("square({n}) = {}", square(n));

    println!("----------");
    for k in 1..45 {
        let fib = fibo(k);
        if fib % n == 0 {
            println!("fibo({k}) = {fib} can be divided by {n}");
        }
    }
}

fn fibo(n: u32) -> u32 {
    if n == 1 {
        return 0;
    }
    if n == 2 {
        return 1;
    }
    let mut fibs = vec![0, 1];
    for _ in 2..n {
        fibs.push(fibs[fibs.len() - 1] + fibs[fibs.len() - 2])
    }

    fibs[fibs.len() - 1]
}

// fn square(n: u32) -> u32 {
//     n*n
// }
