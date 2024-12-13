import Image from "next/image";
import ThemeToggle from "./components/ThemeToggle";
import { Download } from "lucide-react";
import { decorations } from "@/data/data";

export default function Home() {
  return (
    <div className="space-y-8">
      <header className="flex justify-between items-center mb-12 sticky top-0 bg-background z-10 py-4">
        <h1 className="text-6xl font-bold">OTTER DECORATIONS</h1>
        <ThemeToggle />
      </header>
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8 justify-items-center">
        {decorations.map((decoration) => (
          <div
            key={decoration.id}
            className="neutro-box p-4 hover:bg-accent hover:text-background transition-colors"
          >
            <div className="relative w-72 h-72 mb-4">
              <Image
                src={`/placeholder.svg?height=288&width=288&text=${decoration.title}`}
                alt={decoration.title}
                width={288}
                height={288}
                className="object-cover"
              />
            </div>
            <h2 className="text-2xl font-bold mb-2">
              {decoration.title.toUpperCase()}
            </h2>
            <a
              href={`/api/download?id=${decoration.id}`}
              className="neutro-button inline-flex items-center"
              download
            >
              <Download className="w-4 h-4 mr-2" />
              DOWNLOAD
            </a>
          </div>
        ))}
      </div>
    </div>
  );
}
