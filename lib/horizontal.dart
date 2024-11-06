import 'package:flutter/material.dart';

class ListHorizontal extends StatelessWidget {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGZhYUrmk6vDmi1-Pj7oI-HzTpQDCi9-IFTA&s',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABe7xFHAdHVokCMzyVtXOA0GRyFiWVDUx-_bIJuNUy6N1GHoGxFZwrcJmfYdOXEpk6ZJ7tAhTXMdLot0O8WHxpanLOnuAMtGZeFuZ.jpg?r=0bd',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABfVVrIzdrv0H6T282LdxwJZ6kIVoonAGJOgz82mXpDrvUP_6h6lfrkLJcHuQKIfWxK1sB95sx72SXUSw0A_DxEx9vp-YlBq9K3yu.jpg?r=fe0',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABdUs0ScZwUVS4SW03CGrMhvklW1BvhlF2l0I_ZihhnaMgLbhV6Sgc26BLAiHR8i1C4jpkXeGgIMBEQpJiwbTv-oE8pHju7o7D9XT.jpg?r=07e',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABRUUWCePlJlATV4qIi4iEc3q70FhIk89kbBMfKR52xaFIfBn4FgQpF_7AiNBlaE0SnjBV_dZZYo6keI_nBSy20QtI7aNTE6r8Q2sGUaMoqmzFNH8Gk9Pv9t4yZKNTfMQn9-lEw.jpg?r=fec',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABXMl-o6p1PrkFCdLzgM9nDYw4pnbQUbBlssHxzYhz85hw4M68r0LPZMtFssFT-2lJe2K9Sf53Qd6uz2XOhhzfvQf-WXSUamhulxk.jpg?r=f3b',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABds7Yoklfeg-c4yndMZkws1W_8jM2aX2gC1GSDwXcj8SmMW5TYREaQ-0IvkcRSIQVWtkremJPEeYTLr2EoYFcOaVLrLSo9aco0Ej.jpg?r=84d',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABeCVh8__cqCN1yfgGw4UCD9ZZqIti6WZVUCkmyYB__Ht3FKKCyqO8mYAdLm7SWFKYqUX80Ukv_YoKlW64SaA34xV6oxP5uEKb-L_.jpg?r=999',
  ];
  final List<String> imageUrls2 = [
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABY45qByOtb5lZxGAwQgv0JdjiH1PtvsAl0zwuRvDNR4YZBbgH00K5Vc2g4X-mnDTBnqbh-m2IzIO4iullvNwOLGhuo7_evUJLeU.jpg?r=bb6',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABZWnEwJae-oQDtvF9iVt98dzF_NTylsegyo9owgjCXUisIfKrl2CWuQXfRjQJlIC0_S1o7lnwd8paS_o2EuTm4KnqJI9pZhs3Kg.jpg?r=2b6',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQDoApMyYS0rty2m2QChSmfATiFBDVnMHjLWFVTIEFjeQ2pvqQvtLAyTHED-mARcPLSSH1i1JtmsmIuXghOEIJLNEL2vJfZUXb0.jpg?r=4ae',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABfYQG65odOrmkKqX0AR_Nqh-3NIH6_XRm6PBhFEApmUIHgTofBkpiH-CqFjIQ0EA9-WWTa5t61dA4IVGNK6YTyMGoLj2KEAV5EU.jpg?r=7b8',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABWleFFME9pfLwDv0XIlQBaDVDVVOviKQUqYbBM6teYH3ETFOYcBmBLzj3uQWhIO0qUezZG4xXC-c-n_FhG-wDhcujiKErIWHC4w.jpg?r=1df',
    'https://occ-0-6710-64.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSHndDetlal9fbOIbx_pMLbBbH1IVzl2Mifk8l1j3xbYv26fj_e70EU6s_1AxF2gSx4PDaTaXQwKXMrQ7Q7IWGPVefvRkVYjnLs.jpg?r=857',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Horizontal'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sedang Tren Sekarang',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(imageUrls.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          imageUrls[index],
                          width: 130,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Film Asia",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(imageUrls2.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          imageUrls2[index],
                          width: 200,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
