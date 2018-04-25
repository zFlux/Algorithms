
public class quicksort {

    public static void main(String[] args) {

        int[] intInput;
        if (args.length > 2 && args[0].contentEquals("random")) {
            int randArrayLength = Integer.parseInt(args[1]);
            int randArrayMaxElement = Integer.parseInt(args[2]);
            intInput = randomIntArray(randArrayLength, randArrayMaxElement);
        } else {
            intInput = convertStringArrayToIntArray(args);
        }

        System.out.println("input");
        System.out.println("");
        for (int i = 0; i < intInput.length; i++) {
            System.out.println(intInput[i]);
        }

        System.out.println("sorted");
        System.out.println("");
        int[] sortedArray = quickSort(intInput);
        for (int i = 0; i < sortedArray.length; i++) {
            System.out.println(sortedArray[i]);
        }

    }

    public static int[] quickSort(int[] list) {
        return partition(list, 0, list.length - 1);
    }

    private static int[] partition(int[] part, int startIndex, int endIndex) {

        // A list of one element is already sorted
        if (endIndex - startIndex < 1) return part;

        int i = startIndex, j = endIndex;
        int pivot = part[i];
        int pivotPosition = i;

        while (j > i) {
            while (pivot <= part[j] && j > i) {
                j--;
            }
            if (j <= i) break;
            pivotPosition = j;
            part[i] = part[j];
            part[j] = pivot;
            
            while (pivot > part[i] && j > i) {
                i++;
            }

            if (j <= i) break;
            pivotPosition = i;
            part[j] = part[i];
            part[i] = pivot;

        }

        // A list of two elements is sorted after partitioning
        if (endIndex - startIndex < 2) return part;

        // For a list of more than two elements Recurse into the smaller of the two partitions first
        if (((pivotPosition - 1) - startIndex) < (endIndex - (pivotPosition + 1))) {
            partition(part, startIndex, pivotPosition - 1);
            partition(part, pivotPosition + 1, endIndex);

        } else {
            partition(part, pivotPosition + 1, endIndex);
            partition(part, startIndex, pivotPosition - 1);
        }

        return part;

    }

    private static int[] convertStringArrayToIntArray(String[] args) {
        int[] intArray = new int[args.length];
        for (int i = 0; i < args.length; i++) {
            intArray[i] = Integer.parseInt(args[i]);
        }

        return intArray;
    }

    private static int[] randomIntArray(int length, Integer maxElement) {
        int[] testArray = new int[length];
        for (int i = 0; i < length; i++) {
            double randomNum = Math.random();
            testArray[i] = (int) (randomNum * maxElement.doubleValue());
        }

        return testArray;
    }
}
