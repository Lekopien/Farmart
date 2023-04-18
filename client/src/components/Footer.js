import React from "react";
import { FaFacebook } from "react-icons/fa";
import { HiOutlineMail } from "react-icons/hi";
import { AiFillPhone } from "react-icons/ai";
import { FaInstagram } from "react-icons/fa";

const SocialLinks = () => {
  const links = [
    {
      id: 2,
      child: (
        <>
          Facebook <FaFacebook size={30} />
        </>
      ),
      href: "https://www.facebook.com/",
    },
    {
      id: 3,
      child: (
        <>
          Mail <HiOutlineMail size={30} />
        </>
      ),
      href: "farmart234@gmail.com",
    },
    {
      id: 4,
      child: (
        <>
          Instagram <FaInstagram size={30} />
        </>
      ),
      href: "www.instagram.com",
      style: "rounded-br-md",
      download: false,
    },
    {
      id: 5,
      child: (
        <>
          Phone <AiFillPhone size={30} />
        </>
      ),
      href: "(604)365-2620",
    },
  ];

  return (
    <div className="hidden lg:flex flex-col top-[35%] left-0 fixed">
      <ul>
        {links.map(({ id, child, href, style, download }) => (
          <li
            key={id}
            className={
              "flex justify-between items-center w-40 h-14 px-4 ml-[-100px] hover:ml-[-10px] hover:rounded-md duration-300 bg-gray-500" +
              " " +
              style
            }
          >
            <a
              href={href}
              className="flex justify-between items-center w-full text-white"
            >
              {child}
            </a>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default SocialLinks;
