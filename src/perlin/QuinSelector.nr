global choices = 16;

fn quinSelector(n: [u254; choices], index: u254) -> u254 {
    constrain index < choices;
    let mut total: u254 = 0;
    for i in 0..choices {
        if i == index {
            total = total + n[i];
        }
    }
    total
}