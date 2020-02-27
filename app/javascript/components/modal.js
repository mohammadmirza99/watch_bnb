import swal from 'sweetalert';

export const modalClick = (titleProp, textProp, iconProp) => {
  swal({
    title: "Good job!",
    text: "You clicked the button!",
    icon: iconProp,
    button: "Reserve Watch!",
  })
  .then(action => {
    if (action) {
      window.location = "/watches"
    }
  })
}








// Try to implement modal for delete.
export const deleteItemModal = () =>swal({
  title: "Are you sure?",
  text: "Once deleted, you will not be able to recover this imaginary file!",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  if (willDelete) {
    swal("Poof! Your imaginary file has been deleted!", {
      icon: "success",
    });
  } else {
    swal("Your imaginary file is safe!");
  }
});
// modalClick("TITLE", "TEXT", "ICON")
