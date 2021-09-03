func swap(a:inout Int ,b:inout Int)
{
    let t = a
    a=b
    b=t
}

func partition(arr:inout [Int],low:Int,high:Int)->Int
{
    let pivote = arr[high]
  var i = low-1
    for j in low...high-1
    {
        if arr[j] < pivote
        {
            i+=1
            arr.swapAt(i, j)
        }
    }
    arr.swapAt(i + 1, high);
    return i+1
}

func quickSort(arr: inout[Int],low:Int,high:Int)
{
    if(low<high)
    {
        let pi = partition(arr: &arr, low: low, high: high)
        quickSort(arr: &arr, low: low, high: pi-1)
        quickSort(arr: &arr, low: pi+1, high: high)
    }
}

func printArray(arr:[Int],size:Int)
{
    print(arr)
}

//var arr = [10, 7, 8, 9, 1, 5];
//let n = arr.count
//quickSort(arr: &arr, low: 0, high: n-1)
//print( "Sorted array:")
//printArray(arr: arr, size: n)

//output
/*
Sorted array:
[1, 5, 7, 8, 9, 10]
Program ended with exit code: 0
*/
