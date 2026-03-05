import React from "react";
import { BsArrowLeftCircleFill, BsArrowRightCircleFill } from "react-icons/bs";

export const Carousel = ({ images }) => {
  /* You will need to  use  state to mnage the current image */
  const [currentImageIndex, setCurrentImageIndex] = React.useState(0);
  /* You will need to hanle the click on left and right button */
    function onLeftClick() {
      (currentImageIndex === 0) ? setCurrentImageIndex(images.length - 1) : setCurrentImageIndex(currentImageIndex - 1);
    }

    function onRightClick() {
      (currentImageIndex === images.length - 1) ? setCurrentImageIndex(0) : setCurrentImageIndex(currentImageIndex + 1);
    }
  /* You will need to manage the cases when we are on the last image or first image*/

  return (
    <div className="carousel">
      <BsArrowLeftCircleFill className="arrow arrow-left" onClick={onLeftClick} />

      {/* YOu will need to display the current image, not the first one.. */}
      <img src={images[currentImageIndex].src} alt={images[currentImageIndex].alt} className="slide" />

      <BsArrowRightCircleFill className="arrow arrow-right" onClick={onRightClick} />
    </div>
  );
};
