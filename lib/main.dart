import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ============================================================================
// 1. BANG MAU  (Figma > "Scaffold (Flutter Screen: 390px | Color: #F8FAFC)")
// ============================================================================
abstract final class AppColors {
  /// Nen cua ca khung Profile (Scaffold: #F8FAFC).
  static const page = Color(0xFFF8FAFC);

  /// Nen card / nut (Surface: #FFFFFF).
  static const surface = Color(0xFFFFFFFF);

  /// Nen xam nhat: chip dia diem, icon box, ... (#F1F5F9).
  static const soft = Color(0xFFF1F5F9);

  /// Vien khung Profile 3px (Bordure: #CBD5E1).
  static const line = Color(0xFFCBD5E1);

  /// Vien mong 1px cua nut / card / chip (Border: #E2E8F0).
  static const hairline = Color(0xFFE2E8F0);

  /// Duong ke trong card (#F1F5F9).
  static const divider = Color(0xFFF1F5F9);

  /// Chu tieu de dam: #0F172A.
  static const ink = Color(0xFF0F172A);

  /// Chu doan van About Me: #475569.
  static const body = Color(0xFF475569);

  /// Chu phu (chuc danh, mo ta project): #64748B.
  static const muted = Color(0xFF64748B);

  /// Chu nhan nhat (Projects / Experience / Rating): #94A3B8.
  static const subtle = Color(0xFF94A3B8);

  /// Chu cua cac dong contact (email / dien thoai): #334155.
  static const slate = Color(0xFF334155);

  /// Chevron mo (#CBD5E1) va icon nut back/share (#1E293B).
  static const faint = Color(0xFFCBD5E1);
  static const iconStrong = Color(0xFF1E293B);

  /// Huy hieu da xac minh (#0284C7) va sao rating (#EAB308).
  static const badge = Color(0xFF0284C7);
  static const star = Color(0xFFEAB308);
}

/// Mau cua 5 chip ky nang: (mau chu/icon, mau nen) - lay dung theo Figma.
const List<(Color fg, Color bg)> kSkillColors = [
  (Color(0xFF0369A1), Color(0xFFE0F2FE)), // Flutter    - #E0F2FE / #0369A1
  (Color(0xFF15803D), Color(0xFFDCFCE7)), // Dart       - #DCFCE7 / #15803D
  (Color(0xFFBE123C), Color(0xFFFFE4E6)), // Clean Arch - #FFE4E6 / #BE123C
  (Color(0xFF7E22CE), Color(0xFFF3E8FF)), // UI/UX      - #F3E8FF / #7E22CE
  (Color(0xFFB45309), Color(0xFFFEF3C7)), // Firebase   - #FEF3C7 / #B45309
];

// ============================================================================
// 2. KICH THUOC  (Figma > khung "Scaffold (Flutter Screen: 390px)")
//    Flux = Vertical | Largeur = Fixe 390px | Hauteur = Enserrer (hug)
//    Rayon = 44px | Bordure = 3px #CBD5E1 | Marges = 44 / 24 / 36 / 24
//    Espace = 24px | Noi dung = 336px
// ============================================================================
abstract final class AppSizes {
  static const screenWidth = 390.0;
  static const radius = 44.0;
  static const borderWidth = 3.0;
  static const gap = 24.0;
  static const padTop = 44.0;
  static const padRight = 24.0;
  static const padBottom = 36.0;
  static const padLeft = 24.0;

  /// Vung noi dung = 390 - (3 + 24) * 2 = 336px (ca 7 khoi deu rong 336px).
  static const contentWidth =
      screenWidth - (borderWidth + padLeft) - (borderWidth + padRight);

  /// Chieu cao dong cua font Inter that: (ascender 2728 + descender 680)
  /// / upem 2816 = 1,21 em. Figma ghi line-height = 1.21 cho moi chu nen
  /// kich thuoc chu trong app khop voi thiet ke.
  static const lineHeight = 1.21;

  // --------------------------------------------------------------------
  // Chieu cao 7 khoi, lay dung theo thiet ke
  // --------------------------------------------------------------------
  /// 1. TopBar (Row: MainAxisAlignment.spaceBetween) ...... 336 x 42
  static const headerHeight = 42.0;

  /// 2. Profile Header (avatar 140 + ten + chip dia diem) . 336 x 241
  static const avatarBlockHeight = 241.0;

  /// 3. Stats Card (Radius 20 | Shadow 0 8 18) ............ 336 x 78
  static const statsHeight = 78.0;

  /// 4. About Me (Column) ................................ 336 x 90
  static const aboutHeight = 90.0;

  /// 5. Skills & Expertise (2 hang chip 32px) ............ 336 x 105
  static const skillsHeight = 105.0;

  /// 6. Featured Projects (2 card 165 x 145) ............. 336 x 185
  static const projectsHeight = 185.0;

  /// 7. Contact Card (3 dong 62px + 2 duong ke 1px) ...... 336 x 192
  static const contactHeight = 192.0;

  /// 42 + 241 + 78 + 90 + 105 + 185 + 192 = 933px
  static const blocksHeight =
      headerHeight +
      avatarBlockHeight +
      statsHeight +
      aboutHeight +
      skillsHeight +
      projectsHeight +
      contactHeight;

  /// Khung Profile = 44 + 36 (marges) + 933 (7 khoi) + 6 x 24 (espace)
  /// + 3 x 2 (bordure) = 1.163px
  static const profileHeight =
      padTop + padBottom + blocksHeight + gap * 6 + borderWidth * 2;

  // --------------------------------------------------------------------
  // Kich thuoc le con lai (lay theo tung node trong Figma)
  // --------------------------------------------------------------------
  /// Nut back / share: 42 x 42 | Radius 12 | Border #E2E8F0.
  static const iconButtonSize = 42.0;
  static const iconButtonRadius = 12.0;
  static const iconButtonIcon = 18.0;

  /// Avatar: vong gradient 140 -> vong trang 132 -> anh 124.
  static const avatarSize = 140.0;
  static const avatarGap = 4.0;

  /// Huy hieu da xac minh 28 x 28, cach mep phai 16 / mep duoi 8.
  static const badgeSize = 28.0;
  static const badgeRight = 16.0;
  static const badgeBottom = 8.0;

  /// Chip "Tokyo, Japan": cao 30 | Radius 20 | Padding 6/14 | Gap 6.
  static const pillHeight = 30.0;
  static const pillRadius = 20.0;

  /// Duong ke doc giua 3 o thong ke: 1 x 28.
  static const statDividerHeight = 28.0;

  /// Chip ky nang: cao 32 | Radius 14 | Padding 8/14 | Gap 6 | Icon 14.
  static const chipHeight = 32.0;
  static const chipRadius = 14.0;
  static const chipIcon = 14.0;

  /// Card project: 165 x 145 | Radius 16 | Anh 165 x 85.
  static const projectCardHeight = 145.0;
  static const projectImageHeight = 85.0;

  /// Moi dong contact cao 62px, icon box 34 x 34 | Radius 10.
  static const contactRowHeight = 62.0;
  static const contactIconBox = 34.0;

  /// Icon chevron ben phai cac dong contact.
  static const chevron = 18.0;
}

/// Key de test do dung kich thuoc tung khoi trong khung Profile.
abstract final class AppKeys {
  static const header = Key('profile.header');
  static const avatarBlock = Key('profile.avatarBlock');
  static const statsCard = Key('profile.statsCard');
  static const aboutMe = Key('profile.aboutMe');
  static const skills = Key('profile.skills');
  static const projects = Key('profile.projects');
  static const contact = Key('profile.contact');
}

// ============================================================================
// 3. APP
// ============================================================================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter', // font bundle trong assets/fonts
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.ink),
        scaffoldBackgroundColor: AppColors.page,
        // Moi chu khong set 'height' rieng se dung chieu cao dong 1,21 em,
        // giong dung font Inter ma Figma dung (xem AppSizes.lineHeight).
        // letterSpacing: 0 vi Figma ghi ls = 0 cho tat ca cac chu.
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            height: AppSizes.lineHeight,
            letterSpacing: 0,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

/// Nen trang + khung Profile 390px o giua, cuon doc khi man hinh thap.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Center(child: ProfileScreen()),
        ),
      ),
    );
  }
}

// ============================================================================
// 4. KHUNG PROFILE  (390 x hug | radius 44 | border 3 | padding 44/24/36/24)
// ============================================================================
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.screenWidth,
      decoration: BoxDecoration(
        color: AppColors.page,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(color: AppColors.line, width: AppSizes.borderWidth),
      ),
      padding: const EdgeInsets.only(
        top: AppSizes.padTop,
        right: AppSizes.padRight,
        bottom: AppSizes.padBottom,
        left: AppSizes.padLeft,
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min, // Hauteur: Enserrer (hug) = 1.163px
        crossAxisAlignment: CrossAxisAlignment.stretch, // Remplissage 336px
        spacing: AppSizes.gap, // Espace: 24px
        children: [
          // 7 khoi, chieu cao dung theo thiet ke Figma.
          SizedBox(
            key: AppKeys.header,
            height: AppSizes.headerHeight,
            child: _Header(),
          ),
          SizedBox(
            key: AppKeys.avatarBlock,
            height: AppSizes.avatarBlockHeight,
            child: _AvatarBlock(),
          ),
          SizedBox(
            key: AppKeys.statsCard,
            height: AppSizes.statsHeight,
            child: _StatsCard(),
          ),
          SizedBox(
            key: AppKeys.aboutMe,
            height: AppSizes.aboutHeight,
            child: _AboutMeSection(),
          ),
          SizedBox(
            key: AppKeys.skills,
            height: AppSizes.skillsHeight,
            child: _SkillsSection(),
          ),
          SizedBox(
            key: AppKeys.projects,
            height: AppSizes.projectsHeight,
            child: _ProjectsSection(),
          ),
          SizedBox(
            key: AppKeys.contact,
            height: AppSizes.contactHeight,
            child: _ContactCard(),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 5. TOPBAR  (nut back 42x42 | chu "Profile" | nut share 42x42)
// ============================================================================
class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _IconButton(icon: Icons.chevron_left),
        Text(
          'Profile',
          // Figma: 18px Bold #0F172A
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.ink,
            height: AppSizes.lineHeight,
          ),
        ),
        _IconButton(icon: Icons.share_outlined),
      ],
    );
  }
}

/// Nut 42 x 42, nen trang, vien 1px #E2E8F0, radius 12 (Figma: IconButton).
class _IconButton extends StatelessWidget {
  const _IconButton({required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.iconButtonSize,
      height: AppSizes.iconButtonSize,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSizes.iconButtonRadius),
        border: Border.all(color: AppColors.hairline),
      ),
      child: Icon(
        icon,
        size: AppSizes.iconButtonIcon,
        color: AppColors.iconStrong,
      ),
    );
  }
}

// ============================================================================
// 6. PROFILE HEADER  (avatar 140 + ten + chuc danh + chip dia diem)
//    Flux: Column | CrossAxisAlignment.center | Espace: 8px
// ============================================================================
class _AvatarBlock extends StatelessWidget {
  const _AvatarBlock();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 8,
      children: [
        SizedBox(
          width: AppSizes.avatarSize,
          height: AppSizes.avatarSize,
          child: Stack(
            children: [
              // 1. Vong gradient 140 x 140 (#FFB088 -> #FF8080 -> #FFCF71)
              const DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    // Figma: GRADIENT_LINEAR, handles (-0.357, 0.357)
                    // -> (0.357, 1.071) tren hop 140 x 140.
                    begin: Alignment(-1.7142857, -0.2857143),
                    end: Alignment(-0.2857143, 1.1428571),
                    colors: [
                      Color(0xFFFFB088),
                      Color(0xFFFF8080),
                      Color(0xFFFFCF70),
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),
                ),
                child: SizedBox.expand(),
              ),
              // 2. Vong trang 132 x 132
              Center(
                child: Container(
                  width: AppSizes.avatarSize - AppSizes.avatarGap * 2,
                  height: AppSizes.avatarSize - AppSizes.avatarGap * 2,
                  decoration: const BoxDecoration(
                    color: AppColors.surface,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              // 3. Anh dai dien 124 x 124 (ClipOval > Image)
              Center(
                child: ClipOval(
                  child: Image.asset(
                    'images/image.png',
                    width: AppSizes.avatarSize - AppSizes.avatarGap * 4,
                    height: AppSizes.avatarSize - AppSizes.avatarGap * 4,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // 4. Huy hieu da xac minh 28 x 28 (Figma: right 16, bottom 8)
              Positioned(
                right: AppSizes.badgeRight,
                bottom: AppSizes.badgeBottom,
                child: Container(
                  width: AppSizes.badgeSize,
                  height: AppSizes.badgeSize,
                  decoration: BoxDecoration(
                    color: AppColors.badge,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.surface, width: 3),
                  ),
                  child: const Icon(Icons.check, size: 13, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        const Text(
          'Alex Rivers',
          // Figma: 24px Bold #0F172A (rong 132px, cao 29px)
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.ink,
            height: AppSizes.lineHeight,
          ),
        ),
        const Text(
          'Lead Mobile Engineer',
          // Figma: 15px Medium #64748B (rong 155px, cao 18px)
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.muted,
            height: AppSizes.lineHeight,
          ),
        ),
        const _LocationPill('Tokyo, Japan'),
      ],
    );
  }
}

/// Chip "Tokyo, Japan": 134 x 30 | Radius 20 | Padding 6/14 | Gap 6.
class _LocationPill extends StatelessWidget {
  const _LocationPill(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.pillHeight,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: AppColors.soft,
        borderRadius: BorderRadius.circular(AppSizes.pillRadius),
        border: Border.all(color: AppColors.hairline),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        children: [
          const Icon(Icons.place_outlined, size: 14, color: AppColors.body),
          Text(
            label,
            // Figma: 13px SemiBold #475569 (rong 84px, cao 16px)
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.body,
              height: AppSizes.lineHeight,
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 7. CARD THONG KE  (148 Projects | 9 Yrs Experience | 4.9 Rating)
//    Flux: Row spaceBetween | Padding 17/20 | Radius 20 | Shadow 0 8 18
//    78px = 42 (24 + 3 + 15) + 1 vien x 2 + 17 x 2
// ============================================================================
class _StatsCard extends StatelessWidget {
  const _StatsCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.divider),
        boxShadow: const [
          // Figma: BoxShadow 0 8 18 #0F172A 5%
          BoxShadow(
            color: Color(0x0D0F172A),
            offset: Offset(0, 8),
            blurRadius: 18,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _StatItem(value: '148', label: 'Projects'),
          ),
          _VerticalLine(),
          Expanded(
            child: _StatItem(value: '9 Yrs', label: 'Experience'),
          ),
          _VerticalLine(),
          Expanded(
            child: _StatItem(value: '4.9 ⭐', label: 'Rating', isStar: true),
          ),
        ],
      ),
    );
  }
}

/// 1 o thong ke: so 20px Bold (cao 24px) + nhan 12px Medium (cao 15px).
class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.value,
    required this.label,
    this.isStar = false,
  });

  final String value;
  final String label;

  /// O "4.9 ⭐" dung mau vang #EAB308 (Figma).
  final bool isStar;

  @override
  Widget build(BuildContext context) {
    // Card cao co dinh 78px => vung noi dung chi con 42px (24 + 3 + 15).
    // Chu "4.9 ⭐" phai dung font emoji cua he dieu hanh (web: Segoe UI Emoji /
    // Noto Color Emoji) nen dong chu cao hon Inter ~1px => tran 42px.
    // FittedBox scaleDown: khi noi dung da vua thi giu nguyen 1:1 nhu thiet ke,
    // chi co nho lai khi giao dien thuc te cao hon khung.
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 3,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: isStar ? AppColors.star : AppColors.ink,
              height: AppSizes.lineHeight,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.subtle,
              height: AppSizes.lineHeight,
            ),
          ),
        ],
      ),
    );
  }
}

/// Duong ke doc giua cac o thong ke: 1 x 28 | #E2E8F0.
class _VerticalLine extends StatelessWidget {
  const _VerticalLine();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 1,
      height: AppSizes.statDividerHeight,
      child: ColoredBox(color: AppColors.hairline),
    );
  }
}

// ============================================================================
// 8. TIEU DE SECTION + ABOUT ME
// ============================================================================
class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // Figma: 17px Bold #0F172A (cao 21px)
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: AppColors.ink,
        height: AppSizes.lineHeight,
      ),
    );
  }
}

class _AboutMeSection extends StatelessWidget {
  const _AboutMeSection();

  @override
  Widget build(BuildContext context) {
    // Figma: khoi "About Me" cao 90px nhung noi dung (tieu de 21 + 8 + doan
    // van 4 dong 84 = 113px) tran ra duoi khung - Figma cung ve nhu vay.
    // OverflowBox giu dung chieu cao 90px cua khoi ma khong cat chu va khong
    // bao loi tran khung khi chay debug.
    return const OverflowBox(
      alignment: Alignment.topLeft,
      maxHeight: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          _SectionTitle('About Me'),
          Text(
            // Figma: 14px Regular #475569, line-height 21px (1.5 em)
            'Passionate Lead Mobile Engineer specialized in Flutter, Dart, and '
            'building high-performance cross-platform applications. Focused on '
            'elegant architecture, intuitive UX, and design systems.',
            style: TextStyle(fontSize: 14, height: 1.5, color: AppColors.body),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 9. SKILLS & EXPERTISE  (2 hang chip, moi chip cao 32px)
//    Flux: Column | Espace 10px | Chip: Radius 14 | Padding 8/14 | Gap 6
//    105px = 21 (tieu de) + 10 + 32 + 10 + 32
// ============================================================================
class _SkillsSection extends StatelessWidget {
  const _SkillsSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        _SectionTitle('Skills & Expertise'),
        // Hang 1: Flutter, Dart, Clean Arch (Figma: 304px)
        Row(
          spacing: 10,
          children: [
            _SkillChip(
              icon: Icons.flutter_dash,
              label: 'Flutter',
              colorIndex: 0,
            ),
            _SkillChip(icon: Icons.code, label: 'Dart', colorIndex: 1),
            _SkillChip(
              icon: Icons.layers_outlined,
              label: 'Clean Arch',
              colorIndex: 2,
            ),
          ],
        ),
        // Hang 2: UI/UX, Firebase (Figma: 198px)
        Row(
          spacing: 10,
          children: [
            _SkillChip(
              icon: Icons.edit_outlined,
              label: 'UI/UX',
              colorIndex: 3,
            ),
            _SkillChip(
              icon: Icons.local_fire_department_outlined,
              label: 'Firebase',
              colorIndex: 4,
            ),
          ],
        ),
      ],
    );
  }
}

/// Chip ky nang: cao 32 | Radius 14 | Padding ngang 14 | Gap 6 | Icon 14.
class _SkillChip extends StatelessWidget {
  const _SkillChip({
    required this.icon,
    required this.label,
    required this.colorIndex,
  });

  final IconData icon;
  final String label;
  final int colorIndex;

  @override
  Widget build(BuildContext context) {
    final (fg, bg) = kSkillColors[colorIndex];
    return Container(
      height: AppSizes.chipHeight,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(AppSizes.chipRadius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        children: [
          Icon(icon, size: AppSizes.chipIcon, color: fg),
          Text(
            label,
            // Figma: 13px SemiBold
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: fg,
              height: AppSizes.lineHeight,
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 10. FEATURED PROJECTS  (2 card 165 x 145, cach nhau 12px)
//     Flux: Column | Espace 12px | Card: Radius 16 | Vien 1px | Anh 165 x 85
//     185px = 21 (tieu de) + 12 + 145 + 7 (cho trong duoi)
// ============================================================================
class _ProjectsSection extends StatelessWidget {
  const _ProjectsSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        _SectionTitle('Featured Projects'),
        Row(
          spacing: 12,
          children: [
            Expanded(
              child: _ProjectCard(
                image: 'images/A2.png',
                title: 'E-Shop Flutter',
                subtitle: 'Mobile App • 2026',
              ),
            ),
            Expanded(
              child: _ProjectCard(
                image: 'images/project_2.png',
                title: 'Crypto Vault',
                subtitle: 'Finance • Clean Arch',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/// Card project: 165 x 145 | Radius 16 | Anh cao 85 | Padding 8/10/10/10.
class _ProjectCard extends StatelessWidget {
  const _ProjectCard({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.projectCardHeight,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.hairline),
        boxShadow: const [
          // Figma: BoxShadow 0 4 10 #0F172A 4%
          BoxShadow(
            color: Color(0x0A0F172A),
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Anh cao 85px, bo goc tren theo card (16 - 1 vien = 15)
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              image,
              width: double.infinity,
              height: AppSizes.projectImageHeight,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  // Figma: 13px Bold #0F172A
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.ink,
                    height: AppSizes.lineHeight,
                  ),
                ),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  // Figma: 11px Medium #64748B
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: AppColors.muted,
                    height: AppSizes.lineHeight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 11. CONTACT INFORMATION  (3 dong 62px + 2 duong ke 1px)
//     Card: Radius 20 | Vien 1px | Shadow 0 4 12
//     192px = 62 x 3 (3 dong) + 1 + 1 (2 duong ke) + 1 x 2 (vien)
// ============================================================================
class _ContactCard extends StatelessWidget {
  const _ContactCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.hairline),
        boxShadow: const [
          // Figma: BoxShadow 0 4 12 #0F172A 4%
          BoxShadow(
            color: Color(0x0A0F172A),
            offset: Offset(0, 4),
            blurRadius: 12,
          ),
        ],
      ),
      child: const Column(
        children: [
          Expanded(
            child: _ContactRow(
              icon: Icons.person_outline,
              label: 'Contact Information',
              isTitle: true,
            ),
          ),
          Divider(height: 1, thickness: 1, color: AppColors.divider),
          Expanded(
            child: _ContactRow(
              icon: Icons.mail_outline,
              label: 'alex.rivers@email.com',
            ),
          ),
          Divider(height: 1, thickness: 1, color: AppColors.divider),
          Expanded(
            child: _ContactRow(
              icon: Icons.phone_outlined,
              label: '+81 (90) 1234-5678',
            ),
          ),
        ],
      ),
    );
  }
}

/// 1 dong contact: icon box 34 x 34 (Radius 10) + chu + chevron.
class _ContactRow extends StatelessWidget {
  const _ContactRow({
    required this.icon,
    required this.label,
    this.isTitle = false,
  });

  final IconData icon;
  final String label;
  final bool isTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          // Dong dau: nen #F1F5F9 + icon dam; cac dong sau: #F8FAFC + icon xam
          Container(
            width: AppSizes.contactIconBox,
            height: AppSizes.contactIconBox,
            decoration: BoxDecoration(
              color: isTitle ? AppColors.soft : AppColors.page,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              size: 18,
              color: isTitle ? AppColors.ink : AppColors.muted,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              label,
              // Figma: dong dau 14px Bold #0F172A, con lai 14px Medium #334155
              style: TextStyle(
                fontSize: 14,
                fontWeight: isTitle ? FontWeight.w700 : FontWeight.w500,
                color: isTitle ? AppColors.ink : AppColors.slate,
                height: AppSizes.lineHeight,
              ),
            ),
          ),
          const Icon(
            Icons.chevron_right,
            size: AppSizes.chevron,
            color: AppColors.faint,
          ),
        ],
      ),
    );
  }
}
