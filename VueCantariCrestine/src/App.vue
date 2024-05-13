<template>

  <div class="flex flex-col items-center mt-10">
    <h1 class="mb-4 text-4xl font-extrabold leading-none tracking-tight text-gray-900 md:text-5xl lg:text-6xl">
      Melodii Crestine</h1>
    <p class="mb-6 text-lg font-normal text-gray-500 lg:text-xl sm:px-16 xl:px-48 ">Cântați Domnului, toți locuitorii
      pământului! Vestiți din zi în zi mântuirea Lui. 1 Cronici 16:23</p>
  </div>

  <div class="flex">
    <button v-for="pdf in pdfs" :key="pdf.name" type="button"
      class="flex flex-col items-center text-black hover:text-white border border-yellow-400 hover:bg-yellow-500 font-medium rounded-lg text-sm px-5 py-2.5 text-center m-5"
      @click="openPDF(pdf.url)">
      {{ pdf.name }}
      <span class="text-red-500"> {{ pdf.description }}</span>
    </button>
  </div>
</template>

<script setup>
import InNumeleTauProclamamDuhdeViata from '../src/assets/InNumeleTauproclamamDuhdeviata.pdf';
import PeMareaAcesteiLumiValuriVin from '../src/assets/Pemareaacesteilumivalurivin.pdf';
import SaIubescFaraNcetare from '../src/assets/Saiubescfara-ncetare.pdf';
import TuEstiRegeEstiMesia from '../src/assets/Tu esti Rege esti Mesia.pdf';
import UnTronInaltEInCer from '../src/assets/Un tron inalt e in cer.pdf';
import ZileleTrecCaSiGandul from '../src/assets/Zilele trec ca si gandul.pdf';
import ZoriiDiminetiiInCurandSeVorIvi from '../src/assets/Zorii diminetii in curand se vor ivi.pdf';

const pdfs = [
  {
    url: InNumeleTauProclamamDuhdeViata,
    name: "PDF 1",
    description: "In Numele Tau proclamam Duh de Viata"
  },
  {
    url: PeMareaAcesteiLumiValuriVin,
    name: "PDF 2",
    description: " Pe marea acestei lumi valuri vin"
  },
  {
    url: SaIubescFaraNcetare,
    name: "PDF 3",
    description: " Sa iubesc fara-ncetare"
  }
  ,
  {
    url: TuEstiRegeEstiMesia,
    name: "PDF 4",
    description: " Tu esti Rege esti Mesia"
  }
  ,
  {
    url: UnTronInaltEInCer,
    name: "PDF 5",
    description: " Un tron inalt e in cer"
  }
  ,
  {
    url: ZileleTrecCaSiGandul,
    name: "PDF 6",
    description: " Zilele trec ca si gandul"
  }
  ,
  {
    url: ZoriiDiminetiiInCurandSeVorIvi,
    name: "PDF 7",
    description: " Zorii diminetii in curand se vor ivi"
  }
];

const openPDF = (pdfURL) => {
  window.open(pdfURL, '_blank');
}
</script>

<style scoped></style>
