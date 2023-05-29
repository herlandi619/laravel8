-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 11:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2023-05-20 00:16:43', '2023-05-20 00:16:43'),
(2, 'Personal', 'personal', '2023-05-20 00:16:43', '2023-05-20 00:16:43'),
(3, 'Web Design', 'web-design', '2023-05-20 00:16:43', '2023-05-20 00:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_08_104308_create_posts_table', 1),
(6, '2023_05_08_152024_create_categories_table', 1),
(7, '2023_05_21_142540_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 'Voluptates culpa cupiditate neque debitis possimus.', 'dolores-sequi-animi-sapiente-dolorum-quod', NULL, 'Laboriosam dignissimos quibusdam voluptatem ut ut. Tempora in ipsum omnis id non repudiandae.', '<p>Voluptatem est ipsa ad sed impedit expedita quia. Reprehenderit deserunt inventore error qui quia voluptatem provident magni. Sit excepturi voluptas id vero ea nam sequi ut. Aperiam eos omnis soluta enim.</p><p>Dolorum dolorum dolore ea perferendis. Fugiat sapiente occaecati molestiae laudantium dolorum quidem.</p><p>Molestiae sit ut libero quia placeat. Numquam accusamus consequatur excepturi consectetur. In quidem asperiores provident nostrum occaecati reiciendis sequi laboriosam.</p><p>Unde omnis suscipit et aliquam libero perspiciatis. Voluptas non aut libero fugit nesciunt eum et. Quo non ut aut harum tempora architecto temporibus. Iure voluptatem dolor ut rem itaque quo quos.</p><p>Assumenda est est minima impedit sed. Voluptatum sunt suscipit vitae velit non nostrum vel ut. Ea dolor voluptatem libero ipsam enim occaecati. Iure est odit corporis laborum autem reiciendis corporis.</p><p>Mollitia sequi velit repellendus nisi corporis. Ea est architecto occaecati animi voluptate autem. Excepturi voluptas sed incidunt ducimus id.</p><p>Et odit facilis sit iusto eos amet. Tempore assumenda repellat delectus libero error.</p><p>Et dicta tempora reprehenderit itaque cupiditate debitis. Ea assumenda asperiores et beatae voluptatem et.</p><p>Sit et nihil omnis dolorum dolorem perferendis praesentium ducimus. Excepturi culpa iste facere ea vitae tenetur. Molestiae quia quia hic non atque quod sed temporibus. Voluptatum nemo voluptatem iure assumenda at. Non neque ratione qui ullam.</p><p>Quae in officia molestias tempora ut nulla. Modi sit quia laboriosam impedit quasi aut quod. Repudiandae mollitia alias ea sit voluptatibus minima rerum.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(2, 2, 5, 'Nisi eum quibusdam repudiandae aut et magnam.', 'perspiciatis-deserunt-vero-perspiciatis-laudantium-vel-sint-error', NULL, 'Consequatur dolorem et non non. Omnis quaerat nesciunt et. Quis dignissimos libero doloremque non harum autem ut eum.', '<p>Rerum a voluptatem omnis exercitationem molestias atque atque. Officiis reiciendis commodi aliquid sed repellat. Illo excepturi magni rerum enim dolorem aliquam est. Rerum adipisci impedit hic tenetur. Iusto optio fugiat sed aliquid at enim.</p><p>Enim omnis perspiciatis eligendi voluptas et et. Voluptas minus enim corporis repellat modi ab consequuntur. Vitae aliquam natus delectus similique vel blanditiis eveniet. Beatae autem nihil dolorum consectetur nemo sint.</p><p>Beatae sint distinctio ea officia voluptatem consectetur suscipit voluptas. Esse deleniti consequuntur mollitia commodi dicta molestias. Quis aperiam et reprehenderit recusandae.</p><p>Eos aut id minus a est ea quia eos. Aliquam amet cupiditate sint aliquid.</p><p>At officiis voluptas libero placeat modi vero velit quis. Autem iste et quo voluptatem corrupti sed aliquam est. Maiores distinctio consequatur iusto ipsa inventore enim ratione. Deleniti omnis inventore autem placeat perferendis natus possimus.</p><p>Ad voluptatem voluptatem aut illo. Laboriosam exercitationem nisi est voluptas ratione facere quia. Non maxime repudiandae eum vel. Explicabo quod est necessitatibus nihil et optio cumque commodi.</p><p>Et eum corporis sint asperiores laboriosam fugit. Sed rerum iste illum quisquam. Et nobis enim omnis dignissimos iure aliquid qui. Et laborum quisquam alias consequuntur et architecto tenetur. Voluptas quia omnis dicta nostrum sint natus impedit.</p><p>Et illo molestiae dolores quo. Blanditiis quae ut dolor quia voluptatem suscipit.</p><p>Ipsa illo nemo quia labore veniam occaecati. Et delectus ea rerum. At sint et placeat ut quia quae.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(3, 2, 5, 'Id consequatur delectus optio aut sunt.', 'nobis-nostrum-quaerat-id-a-dolorum-aliquid', NULL, 'Asperiores eligendi sunt eum quae adipisci sed maxime amet. Eos minima ad exercitationem vel doloremque qui facilis. Dicta est qui labore et quod molestiae.', '<p>Ea id quibusdam fugiat quos a. Voluptates cum maxime impedit. Suscipit et et placeat aut deserunt. Aliquid quidem incidunt nisi nisi.</p><p>Doloremque voluptates occaecati provident voluptatibus. Molestiae eaque autem excepturi voluptatem doloribus aspernatur quod.</p><p>Nam quibusdam est eveniet modi a at non. Nostrum voluptate aut explicabo qui nisi dolores. Sint maxime est cum adipisci ducimus est.</p><p>Autem repudiandae officiis illum omnis mollitia. Et corrupti sit sunt.</p><p>Quisquam iusto neque itaque harum. Vel error omnis et harum magnam. Facere iure omnis maiores quibusdam ab fuga qui. Amet quis aspernatur recusandae rerum.</p><p>Libero corporis aut sit pariatur in quas. Rerum et non quia ea voluptatem. Ipsum fuga ratione quia maiores voluptatem accusantium.</p><p>Molestiae aut et mollitia voluptatem. Explicabo magni debitis quod nam totam est aut ullam.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(4, 1, 4, 'Rerum unde voluptatem quas error velit consequatur.', 'et-et-fugiat-sed-magnam', NULL, 'Dolores totam et magnam corporis sint quibusdam. Odit impedit assumenda ea sint voluptatum esse. Aut rem omnis dolorem numquam non reiciendis.', '<p>Dolor et voluptatum libero et ullam et. Quos minima similique sit nobis recusandae qui consequuntur. Vel aut esse natus voluptatem ipsum. Omnis qui in quia saepe rerum aut.</p><p>Iste aut repudiandae hic illo. Nisi debitis et nemo quod. Illo ad officiis nobis deserunt. Molestiae rerum voluptas facere quam non.</p><p>Ex et accusantium ea consequuntur. A libero enim nisi et. Quo numquam quia pariatur libero maxime illo doloremque et. Inventore nihil dolorem optio accusantium deserunt.</p><p>Qui nisi est iusto omnis quasi iusto. Libero quam nihil suscipit impedit itaque voluptatem. Architecto cupiditate sed commodi earum enim. Omnis soluta ullam porro rem voluptatem.</p><p>Sequi asperiores quis eveniet est quibusdam libero. Et exercitationem expedita pariatur fuga error beatae quia ut. Consequatur omnis rerum a nulla.</p><p>Est dolores quo nesciunt ipsam cumque. Amet quae voluptatem assumenda officia. Earum quia itaque placeat provident.</p><p>Quia quod deserunt praesentium dolore incidunt consequatur dolores. Officia veritatis error officiis voluptatum. Dolorum nisi sed eius dolorem commodi.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(5, 2, 5, 'Maxime et quia illum est.', 'sunt-repudiandae-qui-inventore-enim-ex', NULL, 'Reprehenderit ut ea aliquid nesciunt. Non quo doloremque qui itaque optio sint qui.', '<p>Et harum rerum inventore temporibus. Est et saepe et vel quia. Quisquam quo temporibus aut. Magni ad ad reprehenderit exercitationem amet provident.</p><p>Accusantium facilis qui est et sequi. Architecto ducimus nulla dolores sequi voluptatem nesciunt. Facere vel et omnis.</p><p>Inventore quas vel voluptas et voluptas animi iste ut. Optio enim adipisci nostrum ut facilis quibusdam ipsum. Inventore optio delectus vel possimus quis provident.</p><p>Est impedit et voluptatem possimus. Voluptatem aut sit accusantium modi molestiae est. Officia distinctio labore quaerat numquam temporibus.</p><p>Autem ut vel nemo accusantium nulla velit. Ut enim modi qui dolores asperiores labore. Saepe eos nihil temporibus. Ut at vel a quibusdam iste.</p><p>Aperiam eos quasi aspernatur iure. Iusto et sunt ut mollitia. Voluptas rerum et nihil doloremque sed sint quis.</p><p>Vitae veritatis ut quis dolorem eum et. Consequuntur in nostrum dolorem est consequuntur. Laborum facilis est sed nihil aut nihil vero. Soluta animi doloribus quos et ratione.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(6, 1, 3, 'Consequuntur est sed sint.', 'qui-architecto-aut-recusandae-iusto-sed-et-adipisci-commodi', NULL, 'Laborum aut quia quasi voluptas blanditiis. Assumenda et est doloremque ea suscipit hic iure qui. Laudantium in dolores sit voluptatem quo in nostrum.', '<p>Ipsum eius rerum voluptas non dolor ex. Numquam a non quas rem ipsam est. Velit est quis qui et. Temporibus numquam possimus laborum vitae. Officiis architecto iure sed nobis eos quis ipsa voluptatem.</p><p>Quo voluptates eius velit consequuntur nihil voluptas. In tempore perferendis omnis ab hic. Quo labore voluptatem perferendis repellat. Dolores eius earum consequuntur.</p><p>Itaque non quae dolorem nostrum odit et voluptatum. Quaerat vel quia aut omnis odio. Est rem quia quaerat et laudantium vel.</p><p>Nihil similique aut et consequatur. Dolorem vero in quas alias. Labore repudiandae molestias laborum et incidunt aut est.</p><p>Atque ut in ipsum quia. Quae nam et in at temporibus.</p><p>Voluptatem nostrum unde minima id voluptatum eius earum. Quam aut ratione ipsum voluptate est eveniet in. Perspiciatis laborum est sint voluptatibus.</p><p>Et eum cupiditate qui accusamus asperiores atque deleniti. Eum numquam sit quas est pariatur. Porro dolorem provident vel saepe praesentium odio eius. Et aliquid nulla id corporis modi nesciunt.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(7, 1, 3, 'Asperiores distinctio quia consequatur.', 'corporis-ab-velit-eos-non-repellendus-incidunt', NULL, 'Suscipit est impedit blanditiis et quo. Et ex aut odit eius eveniet id veritatis. Et cum voluptatem ea molestiae et non consequatur. Molestiae est qui aliquid.', '<p>Sequi nulla et cupiditate suscipit. Nesciunt quidem recusandae sunt rerum et sit neque. Libero earum amet architecto maiores cumque mollitia. In numquam facere at dolor illum.</p><p>Quis fugiat dicta inventore quas ut est commodi. Et aut nulla incidunt pariatur cupiditate et veniam. Minus totam voluptas id voluptatem nam nihil neque. Quo quis quis sit qui dolores dolor. Ut iusto quos in consequuntur quia.</p><p>Unde et et pariatur vel in et. Ut labore dolorem voluptate nam accusamus sit non rem. Voluptatum vel ratione sed consequuntur minima debitis. Aut eos cupiditate velit.</p><p>Culpa quaerat enim facilis officia. Deleniti consequatur veritatis consequatur quas odio. Alias voluptatem modi rerum accusamus.</p><p>Dolore cum nisi quasi corporis harum. Fugit rerum repellendus vel porro voluptas nulla rerum rem. Non dolores non tenetur deleniti. Quia voluptatum architecto sit fuga at. Qui ut cumque nemo voluptas ipsa sed.</p><p>Voluptates dolorem dignissimos mollitia. Esse consequatur mollitia rerum repellat officiis. Veritatis voluptatem dicta magni sequi. Quas in ipsam quae eum voluptas.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(8, 1, 4, 'Rerum culpa ipsam nemo temporibus.', 'accusamus-qui-et-a-soluta', NULL, 'Voluptatem architecto omnis autem rerum. Molestiae inventore ea consequatur ducimus eum debitis. Voluptatibus explicabo aliquam at.', '<p>Culpa occaecati ut est quo libero molestiae. Autem unde consectetur dolores omnis sed. Pariatur quo soluta et dolorum enim impedit.</p><p>Ut quis et ut beatae minima tempore repellendus. Nesciunt est quis velit distinctio quaerat. Nostrum vel provident quisquam quisquam in quidem non mollitia. Illo quidem corrupti aliquam consequatur neque id vitae.</p><p>Autem totam iste similique. Laborum quia numquam assumenda quidem culpa placeat. Error aperiam perferendis et et ea nam minima. At itaque provident consequatur natus.</p><p>Nobis placeat iure et qui dolorem velit est rerum. Eum ab numquam aspernatur aliquid. Dolorem doloremque deserunt et. Distinctio cumque magni minus omnis laudantium.</p><p>Ut nisi cum praesentium sit harum et. Aut quia asperiores fugit quas voluptatem. Qui facere nulla laboriosam modi atque architecto voluptas eius.</p><p>Vel et dolorem fugit. Architecto veniam qui nam est. Assumenda est voluptatibus voluptatem est et odit.</p><p>Corporis facilis eos omnis velit sunt illum. Voluptas sint et sequi. Laudantium corrupti aut qui consectetur distinctio voluptatem.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(9, 1, 4, 'Excepturi delectus natus rerum odio dignissimos nesciunt excepturi voluptatem.', 'quam-ab-architecto-ut-alias', NULL, 'In magni rerum qui et voluptatem. Fugiat sint ea aliquam rem a. Nihil nulla quis reprehenderit dicta fuga dolorem.', '<p>Molestias blanditiis inventore quas expedita sint reprehenderit. Totam architecto sunt et et iste eum. Voluptatibus totam et molestias deserunt cupiditate omnis.</p><p>Eveniet voluptates modi impedit quos est. Enim ea et voluptatem eos sunt officia. Labore aut neque voluptatibus earum veniam sint similique asperiores. Qui quaerat est atque.</p><p>Nulla sed dolor dicta eius. Consequatur sit rem ipsa in quo eum at. Et ut corporis magni rem veniam quas. Quod qui voluptas quas non.</p><p>Reiciendis molestias voluptatem sunt eum adipisci corporis. Cum impedit adipisci dolor ut excepturi. Iste sint ab eum saepe fugit doloremque quibusdam at. Hic ut sit modi eius.</p><p>Architecto non dicta tempore consectetur soluta. Natus non quas a repudiandae ad necessitatibus. Odio quos ut consequuntur vitae voluptatem et.</p><p>Ut dolores non itaque ea. Eius suscipit consequatur impedit architecto quo harum non. Quisquam consequatur sit ut velit officia deserunt autem incidunt. Quo ut odio sed enim.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(10, 2, 3, 'Error vel exercitationem omnis optio iusto cupiditate repellat sit et.', 'eos-possimus-nam-enim', NULL, 'Animi debitis fugiat voluptas eos expedita. Ullam perferendis soluta ipsam nihil commodi. Facilis iste dolor dolore.', '<p>Totam maiores impedit modi ut eaque non omnis. Quam natus veritatis id. Est dolorem eum repudiandae voluptatum facilis distinctio. Distinctio nemo consectetur voluptas voluptatem magni et. Velit quae voluptas dolore suscipit odit.</p><p>Quidem qui tenetur asperiores repellendus. Consequuntur explicabo et ullam. Fuga molestiae autem voluptates sit adipisci repudiandae sed. Perferendis quisquam explicabo assumenda ducimus ullam quo eius.</p><p>Dolore aut distinctio eaque dolor voluptas. Earum voluptas in voluptatum ut. Autem numquam omnis ratione exercitationem corrupti recusandae. Et et cupiditate nam.</p><p>Voluptas debitis aut minus sint. Molestiae doloremque eos illo voluptate ut. Et earum dolor sint minus vel et aut.</p><p>Aut nemo vel perspiciatis sed illum. Laborum quod repellendus sunt quia id voluptatem. Consequatur eos odio adipisci similique totam facere eveniet animi. Est sit dignissimos sapiente ipsa sequi.</p><p>Ex ut eveniet eius consequatur. Similique expedita delectus molestiae sequi. Omnis eos asperiores ratione voluptatem. Voluptas et iure impedit sint molestiae. Quo quia est et itaque.</p><p>Voluptatibus pariatur sunt maxime. Et delectus impedit sit consectetur sapiente quidem reprehenderit. Quia nulla deleniti velit voluptatem aut magnam quis porro. Id non alias sapiente sint mollitia amet.</p><p>Reiciendis ad deleniti quae voluptas voluptatem. Voluptate ex beatae architecto voluptate. Quis quo eaque fugiat dolorem est maxime. Quas quo dolor ut iure.</p><p>Ad earum error adipisci dolor quam et voluptas totam. Id tempore ullam quis numquam et voluptatibus. Animi accusantium sapiente alias nisi. Quas tempora occaecati amet vel deserunt.</p><p>Hic minus aspernatur quibusdam et. Sequi dolor sit dolorum eaque culpa.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(11, 1, 4, 'Eius et maxime eaque.', 'quisquam-quae-temporibus-eos-magnam-laboriosam-totam-esse', NULL, 'Tenetur labore aperiam dignissimos magnam. Voluptatibus et consequuntur deleniti repudiandae necessitatibus. Non quia sapiente sit nam fugit quas.', '<p>Blanditiis qui dolores sit totam. Omnis et culpa quis et cum rerum quae. Aut alias provident et autem odio voluptatem nihil fugit. Mollitia consequatur quidem quibusdam omnis atque repellat.</p><p>Ea ut qui cumque laudantium laudantium ut. Dolorem fugit nihil autem delectus distinctio nihil. Et debitis in tenetur rerum.</p><p>Velit soluta commodi dolor et iusto ducimus iste. Quis deleniti ut et cumque deleniti. Sequi est qui fugiat facere voluptatibus natus animi.</p><p>Vel et placeat voluptate numquam voluptatem ut. Rem occaecati quo ut. Et consectetur est quos ipsum et excepturi. Quibusdam corporis vitae aliquid et ea quis.</p><p>Dolores velit accusantium et aut doloribus. Consequuntur similique repellendus nihil voluptatibus. Blanditiis officia architecto eligendi vitae in eius et voluptas. Et et officiis officiis. Facere ex impedit repudiandae.</p><p>Voluptatum quia quis illum ex. Sed est labore cumque est et doloribus. Et itaque et ut dolor velit et aut. Consequatur pariatur rerum et commodi eligendi.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(12, 2, 5, 'Omnis amet asperiores vel.', 'ut-modi-accusamus-sapiente-nesciunt-illum', NULL, 'Et sed aperiam reprehenderit. Perspiciatis est sit aspernatur sit. Earum nisi ipsam voluptate corporis aperiam voluptatem. Molestias at quo consequatur ullam.', '<p>Harum fugiat reiciendis eum consequatur est. Quo sed rerum laborum et illo. Est sunt dolore quidem et inventore aut. In accusamus est ea voluptatibus.</p><p>Quas fugit tempore eos molestias harum ab. Qui sed numquam ipsum repellat unde. Placeat laudantium id commodi id quis omnis.</p><p>Facere quod voluptas voluptatem amet. Similique rem autem ut dolorem et nesciunt. Quia animi sed officia laboriosam. Dolorem voluptas blanditiis sed odit iste et dicta.</p><p>Inventore odit voluptatibus ullam et. Facere aut quisquam nesciunt et vitae dolores. Qui quibusdam ullam optio officia totam quaerat. Et ad ratione quam rerum.</p><p>Corporis voluptas illum sed modi magnam omnis molestiae. Ut voluptatem quia optio voluptas quasi. Et ad et ex nam cum voluptate in. Ipsam est distinctio voluptatem.</p><p>Natus et exercitationem quia modi enim blanditiis nobis excepturi. Repudiandae repellat nihil eligendi et voluptas reprehenderit nihil. Libero nostrum ullam consequatur corrupti fugit nulla iusto. Incidunt molestias ipsum veniam et.</p><p>Et et provident quaerat in delectus. Laborum consequatur quod qui nihil perferendis iusto. Ipsam veritatis repudiandae non ipsa.</p><p>Sequi qui nihil quibusdam et voluptatibus laborum sequi. Nisi aspernatur sit nemo dicta ut dolor. Quod ut ducimus fugiat inventore fugiat.</p><p>Quaerat praesentium illum molestiae molestiae autem voluptatem nisi. Sunt harum pariatur et modi dolorem ea.</p><p>Ut velit minus possimus dignissimos vitae alias. Aperiam qui ipsam ut qui ea.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(13, 2, 4, 'At earum quia.', 'veritatis-aperiam-eligendi-deserunt-aut-atque-reprehenderit-unde-molestiae', NULL, 'Aut et nobis quasi delectus voluptatem quis nisi corporis. Et sit nesciunt possimus aut fuga repellendus debitis. Delectus at quidem ea occaecati consequatur nisi. Porro et est rerum laboriosam distinctio. Non et tenetur quos impedit iure.', '<p>Voluptate recusandae eaque molestias vitae officiis commodi impedit. Aut perferendis dolores voluptatem blanditiis sed. Sunt velit modi quos similique eos autem sapiente.</p><p>Quidem nulla officia molestiae quia consequatur odit et. Reprehenderit odio mollitia sapiente aperiam et placeat hic facere. Eveniet beatae ut repellendus. Voluptatem delectus iusto consequatur.</p><p>Officia alias nam delectus et consequatur ratione. Ratione beatae sint soluta maxime. Et quo sint unde consequatur atque et ab distinctio. Culpa voluptates est aliquam ut enim fugit culpa.</p><p>Porro iusto numquam accusamus ab ducimus aut. Quos dolor facilis aut vero qui dolor eos inventore.</p><p>Ipsum nulla dolorum qui debitis eligendi. Et in quaerat voluptates reprehenderit natus. Natus reprehenderit quis quia repellendus praesentium qui dolores. Accusamus sit adipisci expedita quo repellendus.</p><p>Eaque est maiores veritatis saepe dolorem non. Reiciendis illo voluptatem numquam voluptate qui totam unde est. Ratione repudiandae quisquam ut. Minus animi ut sit provident at. Consectetur praesentium velit eius quam.</p><p>Beatae facilis eos odio. Assumenda cupiditate non sed exercitationem. Doloremque officia adipisci suscipit rerum fugiat tenetur beatae. Id aut ex fugiat voluptas et rerum excepturi illo.</p><p>Corporis consectetur molestiae facere saepe ea quod quibusdam. Et id asperiores sit praesentium aut quis consequuntur. Velit corrupti voluptas maxime molestias tempore.</p><p>Eius repellat unde non. Sed aut et voluptas perferendis. Tempore officia quod ducimus voluptatem consequatur qui.</p>', NULL, '2023-05-20 00:16:44', '2023-05-20 00:16:44'),
(14, 2, 4, 'Alias dolorem odit modi.', 'tenetur-esse-voluptatem-reiciendis-atque', NULL, 'Nisi quis ea labore aut. Eveniet veritatis saepe eveniet amet occaecati alias. Impedit culpa necessitatibus quos cumque. A consequatur dolor hic vero. Itaque totam ut est repellendus voluptatem saepe voluptatum.', '<p>Sit dolorum nesciunt vitae totam modi dolor. Cum occaecati quis nihil ab culpa sapiente exercitationem et.</p><p>Iste aut laboriosam nihil et asperiores dolor ex sit. Asperiores beatae vel ipsum quod saepe. Non blanditiis sed dolor hic. Dolorem eum a eos magni dolor quasi cum.</p><p>Quo blanditiis tempore recusandae. Qui architecto magni molestias asperiores. Illum repellat quia tenetur et deleniti iste culpa. In fuga nihil sint mollitia.</p><p>Sit provident sint adipisci vel ullam illo. Impedit sit vero doloremque quisquam omnis vitae nihil. Aut eveniet quidem sunt voluptatem.</p><p>Omnis rerum placeat quo possimus a similique qui. Optio odit sit voluptates praesentium culpa et voluptatum. Dolore iure harum est.</p><p>Quis dicta ut aliquid et vero alias. Vitae nihil aliquid voluptas dolorem. Ex at corporis quaerat eum sapiente porro odit. Odit tenetur rerum qui voluptatem explicabo est. Enim ab ut iure.</p>', NULL, '2023-05-20 00:16:45', '2023-05-20 00:16:45'),
(15, 1, 3, 'Voluptatem id perferendis ea vel.', 'veniam-quo-et-aut-aut-vitae-omnis', NULL, 'Dolorem laboriosam nam voluptas maxime omnis non assumenda velit. Est fugit quis mollitia ea repudiandae. Illo voluptas delectus molestiae minus aspernatur exercitationem. Qui eum esse consequatur perferendis facilis illo expedita.', '<p>Qui omnis accusamus quia est ut possimus. Vel in placeat dignissimos aperiam dolores quia. Saepe autem quisquam impedit nam.</p><p>Enim et dolore ut nostrum culpa. Nesciunt accusantium nostrum iusto voluptas. Tenetur a omnis et voluptatem sequi.</p><p>Facere hic quibusdam praesentium distinctio. Est rem modi ut nobis sit omnis autem. Adipisci saepe sit quidem quia.</p><p>Sed nulla ut tempore fugit cupiditate mollitia. Quidem quia vel incidunt sequi facere et. Qui sed ipsam eos modi facilis ducimus. Et eos veniam velit nesciunt quisquam expedita.</p><p>Quia enim dolores amet possimus. Qui aut cum tenetur itaque quasi inventore. Minus voluptas aspernatur nam soluta mollitia voluptatibus.</p><p>Atque mollitia molestias unde corrupti aspernatur porro voluptas. Consequatur est doloribus nemo ut. Nihil consequuntur fugiat distinctio quia fugit.</p><p>Eos maiores minima dolor nemo quia fuga. Odio maiores nam autem aliquam nihil nihil ipsum. Et magni molestiae dolor vero similique vel consectetur.</p><p>Iusto debitis in qui sapiente. Sequi quia pariatur est quo. Saepe ut qui iure facere nisi qui ipsam.</p><p>Hic culpa sit voluptatum incidunt qui eos quas. Dolores consequatur sequi dignissimos illo placeat vel voluptatem eum.</p>', NULL, '2023-05-20 00:16:45', '2023-05-20 00:16:45'),
(16, 1, 3, 'Sit qui sed dolorem rem non ea fugiat.', 'voluptatem-voluptas-cupiditate-nihil-aliquam-est-nesciunt', NULL, 'Aliquam nihil voluptates ab id quas error. Omnis consequatur at excepturi sunt unde maiores. Omnis est ipsum ut ut esse. Eveniet soluta quisquam deleniti asperiores vel.', '<p>Laborum eum placeat doloribus et quia. Quis laudantium aliquid temporibus hic qui. Ut optio sunt dolor odit totam aliquid. Est dicta voluptas veniam molestiae voluptate. Nam ut voluptates voluptatem vitae necessitatibus.</p><p>Sequi qui est ducimus ex impedit. Et animi dolor eos aut ea et ipsum eum. Magnam laboriosam qui officia sequi fuga. Architecto corporis distinctio perferendis dolores aut explicabo esse.</p><p>Sed repellat itaque ipsam qui quam consequatur. Tenetur nihil accusantium similique. Hic et assumenda accusamus. Pariatur sequi qui non quia libero.</p><p>Dolores iusto ut provident a impedit. Cumque eaque vel est sint sed quia. Voluptate ut qui ex atque. Laboriosam qui consequatur et adipisci.</p><p>Voluptatibus ratione iste qui ipsam facere corrupti. Amet amet et est. In est repudiandae voluptate quia ea dolor.</p><p>Hic praesentium ea atque quasi tempora. Aut dolor perspiciatis voluptatem assumenda sequi. Enim molestiae corporis modi mollitia ullam sint. Eveniet facilis consequatur est fugiat est ut aut.</p><p>Porro porro at ut repellat quia. Labore necessitatibus sapiente qui excepturi voluptatem ipsa neque et. Deserunt et unde esse explicabo.</p><p>Totam sint voluptas aliquid perspiciatis quis. Asperiores praesentium quos voluptatem quo. Et quia nihil ea quia.</p><p>Et laborum ipsum tempora ullam. Repellendus qui minus eius vitae aut distinctio. Ut voluptates ut nostrum. Quas culpa eligendi magnam ullam impedit veniam. Et rem molestiae consequatur quidem omnis.</p><p>Minus pariatur et culpa magni. Asperiores libero id consequuntur unde ducimus. Doloribus repellat animi at repudiandae quia eaque.</p>', NULL, '2023-05-20 00:16:45', '2023-05-20 00:16:45'),
(17, 2, 4, 'Fugit dolore blanditiis.', 'placeat-non-et-doloremque-consequatur', NULL, 'Ut nesciunt mollitia ut perferendis dolorem minima fugiat. Nobis qui delectus eos et architecto cum qui rerum. Et culpa ullam voluptatibus tenetur.', '<p>Voluptas rem facere qui dolorum perspiciatis rem. Dicta non harum nulla consequatur labore non. Molestiae est similique neque praesentium. Corrupti perferendis quas atque totam rem sit sunt. Praesentium consectetur unde minus et esse.</p><p>Vel ut sit facilis. Sit voluptatem ad magnam sit voluptates ut. Adipisci cumque explicabo tempora totam voluptatem non sint.</p><p>Maiores sed aut est labore enim hic. In dolor sint non aut. Corrupti ut quae rerum veniam est ratione.</p><p>Eaque aliquam laboriosam magni ea tempore nihil. Eveniet beatae iure dolores nemo porro suscipit. Veritatis quas aut nam eum. Rerum corrupti modi expedita et.</p><p>Doloremque molestias est quos accusantium velit. Nulla excepturi voluptates rerum sed esse tenetur provident.</p><p>Sunt quidem et et voluptates quisquam ut. Atque fugit dolores ratione est. Dolor culpa nostrum qui sequi.</p>', NULL, '2023-05-20 00:16:45', '2023-05-20 00:16:45'),
(18, 2, 5, 'Omnis voluptatem enim aut doloribus dolores est.', 'aliquid-voluptatem-deleniti-suscipit-aperiam-voluptates-incidunt', NULL, 'Ducimus necessitatibus id veniam molestiae et beatae. Dignissimos rerum dolorum sapiente beatae omnis. Sit nisi harum quidem provident quaerat et.', '<p>Nulla sed assumenda perspiciatis ipsum asperiores quidem tempore commodi. Accusantium ex nihil corporis similique omnis. Qui facilis eum deserunt. Sunt est magni nesciunt eum est aut.</p><p>Nemo quia quam qui et reprehenderit consequatur. Sunt ut hic dolor tenetur voluptate placeat ad. Labore velit cupiditate minima sunt.</p><p>Ut unde quia id minus fuga dolor. Qui ullam neque quo alias est. Accusantium quia corrupti placeat rerum. Quasi exercitationem officiis cum nulla commodi aliquid sit.</p><p>Occaecati est eius aliquid sit. Recusandae omnis labore consectetur quia quo dolor. Ipsa aut neque nesciunt et omnis. Tempore laboriosam sed magnam fugiat.</p><p>Atque et est vel illo. Repudiandae occaecati ducimus voluptates voluptatum fuga. Sed omnis illum commodi ipsum quos occaecati architecto. Minima et consectetur et omnis pariatur.</p><p>Saepe eos dolores quae vitae voluptatem consectetur voluptas. Eligendi aut magnam optio aspernatur ut. Et rem rerum aut. Dolorem sint natus a aliquam.</p>', NULL, '2023-05-20 00:16:45', '2023-05-20 00:16:45'),
(19, 1, 4, 'Quibusdam deleniti dignissimos libero tempore unde cum numquam consectetur laudantium.', 'nesciunt-accusantium-et-occaecati-magni-molestias-similique-ea', NULL, 'Et ducimus consequatur nostrum illum sint. Ducimus eos blanditiis totam. Et ratione voluptatem in eligendi. Saepe est consequuntur in eum.', '<p>Voluptatem et quia minima expedita. Sit ratione et fugiat rerum. Porro dignissimos illum facilis iusto suscipit rerum. Quo omnis quia architecto iusto corporis.</p><p>Est asperiores ad voluptatem ut ut minima. Dolores dolorem porro sit nemo quisquam distinctio minus. Repellendus est sit quia odio non. Quasi occaecati est mollitia eos maxime quidem.</p><p>Est excepturi quo ea. Animi et veritatis nisi corrupti praesentium. Saepe dolorem qui et accusamus molestias.</p><p>Voluptatem nobis delectus porro odit. Vel excepturi voluptatem magnam.</p><p>Ut quos qui unde dolorem impedit praesentium. Voluptas quis iusto nemo distinctio molestias. Perferendis aliquam aut id exercitationem sunt nemo quo recusandae.</p><p>Alias ipsum eos harum illum similique. Totam et praesentium quia. Asperiores itaque eligendi in deleniti laudantium. Velit quidem qui consequuntur et voluptas reprehenderit.</p><p>Repudiandae possimus cupiditate ad explicabo eligendi commodi aut. Recusandae est vero rem rerum eos tenetur. Optio at aliquam consectetur vero non. Explicabo rerum enim omnis.</p><p>Qui dolor animi natus quasi. Dolor eum dolor qui voluptatem. Qui sit dolores explicabo assumenda sed nisi odio.</p>', NULL, '2023-05-20 00:16:45', '2023-05-20 00:16:45'),
(20, 2, 4, 'Et labore non sunt perferendis fugiat ab dolorum vel quis qui.', 'provident-repellat-et-qui-a', NULL, 'Voluptatem commodi eligendi quibusdam neque non asperiores. Provident impedit voluptatum velit dolor repudiandae. Laboriosam nostrum facere fugit voluptas.', '<p>Asperiores iure ea soluta quia. Et enim illum in ad. Labore et dolorem voluptatem non voluptatum quasi. Officiis voluptatibus atque mollitia. Assumenda voluptatem perferendis distinctio quos.</p><p>Totam quos ullam quasi mollitia. Natus sunt quae nisi delectus saepe fuga impedit. Vero necessitatibus sint ipsam facilis corrupti quibusdam. Expedita ab veritatis ut ad quisquam incidunt.</p><p>At maxime sit explicabo blanditiis in. Atque eos et qui autem ex accusantium aut. Ea quia id repellendus dolore culpa iste sunt perspiciatis. Amet accusamus voluptatem et itaque porro.</p><p>Dolor dolor aliquam et corrupti sit sunt. Molestias occaecati sed nihil et fugit ipsum. Non dignissimos voluptate libero totam in. Et ea dolores dolor asperiores.</p><p>Dicta saepe nihil corrupti omnis veritatis omnis adipisci quis. Impedit dolor et modi dolor in nemo. Quas sed iure dignissimos odit.</p><p>Magnam quis qui dolores sed repellat. Voluptatum iusto voluptates nihil ut. At accusamus consectetur totam est. Perspiciatis praesentium qui sed.</p><p>Autem dolor quae sed consequatur incidunt. Quidem odit voluptatem repellendus. Qui distinctio quia sequi.</p><p>Quo quaerat cumque fugit exercitationem natus delectus ducimus. Debitis eligendi magni laborum quibusdam velit. Atque quo doloremque dolor odio. Expedita vero voluptatem vel.</p>', NULL, '2023-05-20 00:16:45', '2023-05-20 00:16:45'),
(24, 1, 1, 'Blog Post Pertama', 'blog-post-pertama', 'post-images/67oGKiwAeSpnvXOoyr6Bws0GD9gdmaTx0XADJB5D.jpg', 'Blog Post Pertama saya Renold Herlandi', 'Blog Post Pertama saya Renold Herlandi', NULL, '2023-05-20 00:41:54', '2023-05-20 00:41:54'),
(25, 3, 1, 'Blog Post Kedua', 'blog-post-kedua', 'post-images/X323oVX3ScQBBRXVxCjVRnGtIDgY3pPa7GCUQTUF.jpg', 'Post Ke Dua Saya', 'Post Ke Dua Saya', NULL, '2023-05-20 01:09:34', '2023-05-20 01:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'renold herlandi', 'herlandigg', 'herlandi619@gmail.com', NULL, '$2y$10$VbN75CCG8T4YUqAiPtktgevnVPJr/Q2yEVsIG5Uf5IatOXPjw4QwG', NULL, '2023-05-20 00:16:38', '2023-05-20 00:16:38', 1),
(2, 'Nabila Zizi Rahayu', 'isaptono', 'kuswandari.ika@example.net', '2023-05-20 00:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2u1kjSPasorN0bMdmGLR6Vo3WPnt2UWvyoEMIFCc2cNYkCCxuDAXiksXuy5d', '2023-05-20 00:16:43', '2023-05-20 00:16:43', 1),
(3, 'Tania Yuliarti', 'damanik.yahya', 'santoso.carub@example.org', '2023-05-20 00:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'luxxci0nWY6bLbPC6cJn3JHamK2dUtR4M4W8RQnqRsB2XuVyl7RcjpoPr5uN', '2023-05-20 00:16:43', '2023-05-20 00:16:43', 0),
(4, 'Irnanto Maulana', 'permadi.gabriella', 'yance72@example.net', '2023-05-20 00:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rd1wt63j5L', '2023-05-20 00:16:43', '2023-05-20 00:16:43', 0),
(5, 'Kayla Yuniar S.E.I', 'bmaryadi', 'marpaung.karen@example.net', '2023-05-20 00:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sh3asoDIXB', '2023-05-20 00:16:43', '2023-05-20 00:16:43', 0),
(6, 'Vivi Laksita M.TI.', 'qpermata', 'slamet48@example.net', '2023-05-20 00:16:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'COPxelb40C', '2023-05-20 00:16:43', '2023-05-20 00:16:43', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
