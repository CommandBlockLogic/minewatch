const arr = []
for (let i = 0; i < 256; i++) {
    const color = i % 4
    arr.push(color)
}
console.log(arr.join('b, '))
