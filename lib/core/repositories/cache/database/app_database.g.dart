// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ProductsTable extends Products
    with TableInfo<$ProductsTable, ProductEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originalIdMeta = const VerificationMeta(
    'originalId',
  );
  @override
  late final GeneratedColumn<String> originalId = GeneratedColumn<String>(
    'original_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _actualPriceMeta = const VerificationMeta(
    'actualPrice',
  );
  @override
  late final GeneratedColumn<String> actualPrice = GeneratedColumn<String>(
    'actual_price',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _sellingPriceMeta = const VerificationMeta(
    'sellingPrice',
  );
  @override
  late final GeneratedColumn<String> sellingPrice = GeneratedColumn<String>(
    'selling_price',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _discountMeta = const VerificationMeta(
    'discount',
  );
  @override
  late final GeneratedColumn<String> discount = GeneratedColumn<String>(
    'discount',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _priceNumericMeta = const VerificationMeta(
    'priceNumeric',
  );
  @override
  late final GeneratedColumn<int> priceNumeric = GeneratedColumn<int>(
    'price_numeric',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>(
        'discount_percentage',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
        defaultValue: const Constant(0.0),
      );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _subCategoryMeta = const VerificationMeta(
    'subCategory',
  );
  @override
  late final GeneratedColumn<String> subCategory = GeneratedColumn<String>(
    'sub_category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _outOfStockMeta = const VerificationMeta(
    'outOfStock',
  );
  @override
  late final GeneratedColumn<bool> outOfStock = GeneratedColumn<bool>(
    'out_of_stock',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("out_of_stock" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _sellerMeta = const VerificationMeta('seller');
  @override
  late final GeneratedColumn<String> seller = GeneratedColumn<String>(
    'seller',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _averageRatingMeta = const VerificationMeta(
    'averageRating',
  );
  @override
  late final GeneratedColumn<String> averageRating = GeneratedColumn<String>(
    'average_rating',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _ratingNumericMeta = const VerificationMeta(
    'ratingNumeric',
  );
  @override
  late final GeneratedColumn<double> ratingNumeric = GeneratedColumn<double>(
    'rating_numeric',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> images =
      GeneratedColumn<String>(
        'images',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<List<String>>($ProductsTable.$converterimages);
  @override
  late final GeneratedColumnWithTypeConverter<ProductDetails?, String>
  productDetails = GeneratedColumn<String>(
    'product_details',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  ).withConverter<ProductDetails?>($ProductsTable.$converterproductDetailsn);
  static const VerificationMeta _primaryImageMeta = const VerificationMeta(
    'primaryImage',
  );
  @override
  late final GeneratedColumn<String> primaryImage = GeneratedColumn<String>(
    'primary_image',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _pidMeta = const VerificationMeta('pid');
  @override
  late final GeneratedColumn<String> pid = GeneratedColumn<String>(
    'pid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _styleCodeMeta = const VerificationMeta(
    'styleCode',
  );
  @override
  late final GeneratedColumn<String> styleCode = GeneratedColumn<String>(
    'style_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _crawledAtMeta = const VerificationMeta(
    'crawledAt',
  );
  @override
  late final GeneratedColumn<DateTime> crawledAt = GeneratedColumn<DateTime>(
    'crawled_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _viewCountMeta = const VerificationMeta(
    'viewCount',
  );
  @override
  late final GeneratedColumn<int> viewCount = GeneratedColumn<int>(
    'view_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _clickCountMeta = const VerificationMeta(
    'clickCount',
  );
  @override
  late final GeneratedColumn<int> clickCount = GeneratedColumn<int>(
    'click_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _featuredMeta = const VerificationMeta(
    'featured',
  );
  @override
  late final GeneratedColumn<bool> featured = GeneratedColumn<bool>(
    'featured',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("featured" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    originalId,
    title,
    brand,
    description,
    actualPrice,
    sellingPrice,
    discount,
    priceNumeric,
    discountPercentage,
    category,
    subCategory,
    outOfStock,
    seller,
    averageRating,
    ratingNumeric,
    images,
    productDetails,
    primaryImage,
    url,
    pid,
    styleCode,
    crawledAt,
    createdAt,
    updatedAt,
    viewCount,
    clickCount,
    featured,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('original_id')) {
      context.handle(
        _originalIdMeta,
        originalId.isAcceptableOrUnknown(data['original_id']!, _originalIdMeta),
      );
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('actual_price')) {
      context.handle(
        _actualPriceMeta,
        actualPrice.isAcceptableOrUnknown(
          data['actual_price']!,
          _actualPriceMeta,
        ),
      );
    }
    if (data.containsKey('selling_price')) {
      context.handle(
        _sellingPriceMeta,
        sellingPrice.isAcceptableOrUnknown(
          data['selling_price']!,
          _sellingPriceMeta,
        ),
      );
    }
    if (data.containsKey('discount')) {
      context.handle(
        _discountMeta,
        discount.isAcceptableOrUnknown(data['discount']!, _discountMeta),
      );
    }
    if (data.containsKey('price_numeric')) {
      context.handle(
        _priceNumericMeta,
        priceNumeric.isAcceptableOrUnknown(
          data['price_numeric']!,
          _priceNumericMeta,
        ),
      );
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
        _discountPercentageMeta,
        discountPercentage.isAcceptableOrUnknown(
          data['discount_percentage']!,
          _discountPercentageMeta,
        ),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('sub_category')) {
      context.handle(
        _subCategoryMeta,
        subCategory.isAcceptableOrUnknown(
          data['sub_category']!,
          _subCategoryMeta,
        ),
      );
    }
    if (data.containsKey('out_of_stock')) {
      context.handle(
        _outOfStockMeta,
        outOfStock.isAcceptableOrUnknown(
          data['out_of_stock']!,
          _outOfStockMeta,
        ),
      );
    }
    if (data.containsKey('seller')) {
      context.handle(
        _sellerMeta,
        seller.isAcceptableOrUnknown(data['seller']!, _sellerMeta),
      );
    }
    if (data.containsKey('average_rating')) {
      context.handle(
        _averageRatingMeta,
        averageRating.isAcceptableOrUnknown(
          data['average_rating']!,
          _averageRatingMeta,
        ),
      );
    }
    if (data.containsKey('rating_numeric')) {
      context.handle(
        _ratingNumericMeta,
        ratingNumeric.isAcceptableOrUnknown(
          data['rating_numeric']!,
          _ratingNumericMeta,
        ),
      );
    }
    if (data.containsKey('primary_image')) {
      context.handle(
        _primaryImageMeta,
        primaryImage.isAcceptableOrUnknown(
          data['primary_image']!,
          _primaryImageMeta,
        ),
      );
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    }
    if (data.containsKey('pid')) {
      context.handle(
        _pidMeta,
        pid.isAcceptableOrUnknown(data['pid']!, _pidMeta),
      );
    }
    if (data.containsKey('style_code')) {
      context.handle(
        _styleCodeMeta,
        styleCode.isAcceptableOrUnknown(data['style_code']!, _styleCodeMeta),
      );
    }
    if (data.containsKey('crawled_at')) {
      context.handle(
        _crawledAtMeta,
        crawledAt.isAcceptableOrUnknown(data['crawled_at']!, _crawledAtMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    if (data.containsKey('view_count')) {
      context.handle(
        _viewCountMeta,
        viewCount.isAcceptableOrUnknown(data['view_count']!, _viewCountMeta),
      );
    }
    if (data.containsKey('click_count')) {
      context.handle(
        _clickCountMeta,
        clickCount.isAcceptableOrUnknown(data['click_count']!, _clickCountMeta),
      );
    }
    if (data.containsKey('featured')) {
      context.handle(
        _featuredMeta,
        featured.isAcceptableOrUnknown(data['featured']!, _featuredMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductEntity(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      originalId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      actualPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}actual_price'],
      )!,
      sellingPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}selling_price'],
      )!,
      discount: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}discount'],
      )!,
      priceNumeric: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}price_numeric'],
      )!,
      discountPercentage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}discount_percentage'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      subCategory: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sub_category'],
      )!,
      outOfStock: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}out_of_stock'],
      )!,
      seller: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seller'],
      )!,
      averageRating: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}average_rating'],
      )!,
      ratingNumeric: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}rating_numeric'],
      )!,
      images: $ProductsTable.$converterimages.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}images'],
        )!,
      ),
      productDetails: $ProductsTable.$converterproductDetailsn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}product_details'],
        ),
      ),
      primaryImage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}primary_image'],
      )!,
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      pid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pid'],
      )!,
      styleCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}style_code'],
      )!,
      crawledAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}crawled_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
      viewCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}view_count'],
      )!,
      clickCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}click_count'],
      )!,
      featured: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}featured'],
      )!,
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converterimages =
      const StringListConverter();
  static TypeConverter<ProductDetails, String> $converterproductDetails =
      const ProductDetailsConverter();
  static TypeConverter<ProductDetails?, String?> $converterproductDetailsn =
      NullAwareTypeConverter.wrap($converterproductDetails);
}

class ProductEntity extends DataClass implements Insertable<ProductEntity> {
  final String id;
  final String originalId;
  final String title;
  final String brand;
  final String description;
  final String actualPrice;
  final String sellingPrice;
  final String discount;
  final int priceNumeric;
  final double discountPercentage;
  final String category;
  final String subCategory;
  final bool outOfStock;
  final String seller;
  final String averageRating;
  final double ratingNumeric;
  final List<String> images;
  final ProductDetails? productDetails;
  final String primaryImage;
  final String url;
  final String pid;
  final String styleCode;
  final DateTime? crawledAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int viewCount;
  final int clickCount;
  final bool featured;
  const ProductEntity({
    required this.id,
    required this.originalId,
    required this.title,
    required this.brand,
    required this.description,
    required this.actualPrice,
    required this.sellingPrice,
    required this.discount,
    required this.priceNumeric,
    required this.discountPercentage,
    required this.category,
    required this.subCategory,
    required this.outOfStock,
    required this.seller,
    required this.averageRating,
    required this.ratingNumeric,
    required this.images,
    this.productDetails,
    required this.primaryImage,
    required this.url,
    required this.pid,
    required this.styleCode,
    this.crawledAt,
    this.createdAt,
    this.updatedAt,
    required this.viewCount,
    required this.clickCount,
    required this.featured,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['original_id'] = Variable<String>(originalId);
    map['title'] = Variable<String>(title);
    map['brand'] = Variable<String>(brand);
    map['description'] = Variable<String>(description);
    map['actual_price'] = Variable<String>(actualPrice);
    map['selling_price'] = Variable<String>(sellingPrice);
    map['discount'] = Variable<String>(discount);
    map['price_numeric'] = Variable<int>(priceNumeric);
    map['discount_percentage'] = Variable<double>(discountPercentage);
    map['category'] = Variable<String>(category);
    map['sub_category'] = Variable<String>(subCategory);
    map['out_of_stock'] = Variable<bool>(outOfStock);
    map['seller'] = Variable<String>(seller);
    map['average_rating'] = Variable<String>(averageRating);
    map['rating_numeric'] = Variable<double>(ratingNumeric);
    {
      map['images'] = Variable<String>(
        $ProductsTable.$converterimages.toSql(images),
      );
    }
    if (!nullToAbsent || productDetails != null) {
      map['product_details'] = Variable<String>(
        $ProductsTable.$converterproductDetailsn.toSql(productDetails),
      );
    }
    map['primary_image'] = Variable<String>(primaryImage);
    map['url'] = Variable<String>(url);
    map['pid'] = Variable<String>(pid);
    map['style_code'] = Variable<String>(styleCode);
    if (!nullToAbsent || crawledAt != null) {
      map['crawled_at'] = Variable<DateTime>(crawledAt);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    map['view_count'] = Variable<int>(viewCount);
    map['click_count'] = Variable<int>(clickCount);
    map['featured'] = Variable<bool>(featured);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      originalId: Value(originalId),
      title: Value(title),
      brand: Value(brand),
      description: Value(description),
      actualPrice: Value(actualPrice),
      sellingPrice: Value(sellingPrice),
      discount: Value(discount),
      priceNumeric: Value(priceNumeric),
      discountPercentage: Value(discountPercentage),
      category: Value(category),
      subCategory: Value(subCategory),
      outOfStock: Value(outOfStock),
      seller: Value(seller),
      averageRating: Value(averageRating),
      ratingNumeric: Value(ratingNumeric),
      images: Value(images),
      productDetails: productDetails == null && nullToAbsent
          ? const Value.absent()
          : Value(productDetails),
      primaryImage: Value(primaryImage),
      url: Value(url),
      pid: Value(pid),
      styleCode: Value(styleCode),
      crawledAt: crawledAt == null && nullToAbsent
          ? const Value.absent()
          : Value(crawledAt),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      viewCount: Value(viewCount),
      clickCount: Value(clickCount),
      featured: Value(featured),
    );
  }

  factory ProductEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductEntity(
      id: serializer.fromJson<String>(json['id']),
      originalId: serializer.fromJson<String>(json['originalId']),
      title: serializer.fromJson<String>(json['title']),
      brand: serializer.fromJson<String>(json['brand']),
      description: serializer.fromJson<String>(json['description']),
      actualPrice: serializer.fromJson<String>(json['actualPrice']),
      sellingPrice: serializer.fromJson<String>(json['sellingPrice']),
      discount: serializer.fromJson<String>(json['discount']),
      priceNumeric: serializer.fromJson<int>(json['priceNumeric']),
      discountPercentage: serializer.fromJson<double>(
        json['discountPercentage'],
      ),
      category: serializer.fromJson<String>(json['category']),
      subCategory: serializer.fromJson<String>(json['subCategory']),
      outOfStock: serializer.fromJson<bool>(json['outOfStock']),
      seller: serializer.fromJson<String>(json['seller']),
      averageRating: serializer.fromJson<String>(json['averageRating']),
      ratingNumeric: serializer.fromJson<double>(json['ratingNumeric']),
      images: serializer.fromJson<List<String>>(json['images']),
      productDetails: serializer.fromJson<ProductDetails?>(
        json['productDetails'],
      ),
      primaryImage: serializer.fromJson<String>(json['primaryImage']),
      url: serializer.fromJson<String>(json['url']),
      pid: serializer.fromJson<String>(json['pid']),
      styleCode: serializer.fromJson<String>(json['styleCode']),
      crawledAt: serializer.fromJson<DateTime?>(json['crawledAt']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      viewCount: serializer.fromJson<int>(json['viewCount']),
      clickCount: serializer.fromJson<int>(json['clickCount']),
      featured: serializer.fromJson<bool>(json['featured']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'originalId': serializer.toJson<String>(originalId),
      'title': serializer.toJson<String>(title),
      'brand': serializer.toJson<String>(brand),
      'description': serializer.toJson<String>(description),
      'actualPrice': serializer.toJson<String>(actualPrice),
      'sellingPrice': serializer.toJson<String>(sellingPrice),
      'discount': serializer.toJson<String>(discount),
      'priceNumeric': serializer.toJson<int>(priceNumeric),
      'discountPercentage': serializer.toJson<double>(discountPercentage),
      'category': serializer.toJson<String>(category),
      'subCategory': serializer.toJson<String>(subCategory),
      'outOfStock': serializer.toJson<bool>(outOfStock),
      'seller': serializer.toJson<String>(seller),
      'averageRating': serializer.toJson<String>(averageRating),
      'ratingNumeric': serializer.toJson<double>(ratingNumeric),
      'images': serializer.toJson<List<String>>(images),
      'productDetails': serializer.toJson<ProductDetails?>(productDetails),
      'primaryImage': serializer.toJson<String>(primaryImage),
      'url': serializer.toJson<String>(url),
      'pid': serializer.toJson<String>(pid),
      'styleCode': serializer.toJson<String>(styleCode),
      'crawledAt': serializer.toJson<DateTime?>(crawledAt),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'viewCount': serializer.toJson<int>(viewCount),
      'clickCount': serializer.toJson<int>(clickCount),
      'featured': serializer.toJson<bool>(featured),
    };
  }

  ProductEntity copyWith({
    String? id,
    String? originalId,
    String? title,
    String? brand,
    String? description,
    String? actualPrice,
    String? sellingPrice,
    String? discount,
    int? priceNumeric,
    double? discountPercentage,
    String? category,
    String? subCategory,
    bool? outOfStock,
    String? seller,
    String? averageRating,
    double? ratingNumeric,
    List<String>? images,
    Value<ProductDetails?> productDetails = const Value.absent(),
    String? primaryImage,
    String? url,
    String? pid,
    String? styleCode,
    Value<DateTime?> crawledAt = const Value.absent(),
    Value<DateTime?> createdAt = const Value.absent(),
    Value<DateTime?> updatedAt = const Value.absent(),
    int? viewCount,
    int? clickCount,
    bool? featured,
  }) => ProductEntity(
    id: id ?? this.id,
    originalId: originalId ?? this.originalId,
    title: title ?? this.title,
    brand: brand ?? this.brand,
    description: description ?? this.description,
    actualPrice: actualPrice ?? this.actualPrice,
    sellingPrice: sellingPrice ?? this.sellingPrice,
    discount: discount ?? this.discount,
    priceNumeric: priceNumeric ?? this.priceNumeric,
    discountPercentage: discountPercentage ?? this.discountPercentage,
    category: category ?? this.category,
    subCategory: subCategory ?? this.subCategory,
    outOfStock: outOfStock ?? this.outOfStock,
    seller: seller ?? this.seller,
    averageRating: averageRating ?? this.averageRating,
    ratingNumeric: ratingNumeric ?? this.ratingNumeric,
    images: images ?? this.images,
    productDetails: productDetails.present
        ? productDetails.value
        : this.productDetails,
    primaryImage: primaryImage ?? this.primaryImage,
    url: url ?? this.url,
    pid: pid ?? this.pid,
    styleCode: styleCode ?? this.styleCode,
    crawledAt: crawledAt.present ? crawledAt.value : this.crawledAt,
    createdAt: createdAt.present ? createdAt.value : this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
    viewCount: viewCount ?? this.viewCount,
    clickCount: clickCount ?? this.clickCount,
    featured: featured ?? this.featured,
  );
  ProductEntity copyWithCompanion(ProductsCompanion data) {
    return ProductEntity(
      id: data.id.present ? data.id.value : this.id,
      originalId: data.originalId.present
          ? data.originalId.value
          : this.originalId,
      title: data.title.present ? data.title.value : this.title,
      brand: data.brand.present ? data.brand.value : this.brand,
      description: data.description.present
          ? data.description.value
          : this.description,
      actualPrice: data.actualPrice.present
          ? data.actualPrice.value
          : this.actualPrice,
      sellingPrice: data.sellingPrice.present
          ? data.sellingPrice.value
          : this.sellingPrice,
      discount: data.discount.present ? data.discount.value : this.discount,
      priceNumeric: data.priceNumeric.present
          ? data.priceNumeric.value
          : this.priceNumeric,
      discountPercentage: data.discountPercentage.present
          ? data.discountPercentage.value
          : this.discountPercentage,
      category: data.category.present ? data.category.value : this.category,
      subCategory: data.subCategory.present
          ? data.subCategory.value
          : this.subCategory,
      outOfStock: data.outOfStock.present
          ? data.outOfStock.value
          : this.outOfStock,
      seller: data.seller.present ? data.seller.value : this.seller,
      averageRating: data.averageRating.present
          ? data.averageRating.value
          : this.averageRating,
      ratingNumeric: data.ratingNumeric.present
          ? data.ratingNumeric.value
          : this.ratingNumeric,
      images: data.images.present ? data.images.value : this.images,
      productDetails: data.productDetails.present
          ? data.productDetails.value
          : this.productDetails,
      primaryImage: data.primaryImage.present
          ? data.primaryImage.value
          : this.primaryImage,
      url: data.url.present ? data.url.value : this.url,
      pid: data.pid.present ? data.pid.value : this.pid,
      styleCode: data.styleCode.present ? data.styleCode.value : this.styleCode,
      crawledAt: data.crawledAt.present ? data.crawledAt.value : this.crawledAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      viewCount: data.viewCount.present ? data.viewCount.value : this.viewCount,
      clickCount: data.clickCount.present
          ? data.clickCount.value
          : this.clickCount,
      featured: data.featured.present ? data.featured.value : this.featured,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductEntity(')
          ..write('id: $id, ')
          ..write('originalId: $originalId, ')
          ..write('title: $title, ')
          ..write('brand: $brand, ')
          ..write('description: $description, ')
          ..write('actualPrice: $actualPrice, ')
          ..write('sellingPrice: $sellingPrice, ')
          ..write('discount: $discount, ')
          ..write('priceNumeric: $priceNumeric, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('category: $category, ')
          ..write('subCategory: $subCategory, ')
          ..write('outOfStock: $outOfStock, ')
          ..write('seller: $seller, ')
          ..write('averageRating: $averageRating, ')
          ..write('ratingNumeric: $ratingNumeric, ')
          ..write('images: $images, ')
          ..write('productDetails: $productDetails, ')
          ..write('primaryImage: $primaryImage, ')
          ..write('url: $url, ')
          ..write('pid: $pid, ')
          ..write('styleCode: $styleCode, ')
          ..write('crawledAt: $crawledAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('viewCount: $viewCount, ')
          ..write('clickCount: $clickCount, ')
          ..write('featured: $featured')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    originalId,
    title,
    brand,
    description,
    actualPrice,
    sellingPrice,
    discount,
    priceNumeric,
    discountPercentage,
    category,
    subCategory,
    outOfStock,
    seller,
    averageRating,
    ratingNumeric,
    images,
    productDetails,
    primaryImage,
    url,
    pid,
    styleCode,
    crawledAt,
    createdAt,
    updatedAt,
    viewCount,
    clickCount,
    featured,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductEntity &&
          other.id == this.id &&
          other.originalId == this.originalId &&
          other.title == this.title &&
          other.brand == this.brand &&
          other.description == this.description &&
          other.actualPrice == this.actualPrice &&
          other.sellingPrice == this.sellingPrice &&
          other.discount == this.discount &&
          other.priceNumeric == this.priceNumeric &&
          other.discountPercentage == this.discountPercentage &&
          other.category == this.category &&
          other.subCategory == this.subCategory &&
          other.outOfStock == this.outOfStock &&
          other.seller == this.seller &&
          other.averageRating == this.averageRating &&
          other.ratingNumeric == this.ratingNumeric &&
          other.images == this.images &&
          other.productDetails == this.productDetails &&
          other.primaryImage == this.primaryImage &&
          other.url == this.url &&
          other.pid == this.pid &&
          other.styleCode == this.styleCode &&
          other.crawledAt == this.crawledAt &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.viewCount == this.viewCount &&
          other.clickCount == this.clickCount &&
          other.featured == this.featured);
}

class ProductsCompanion extends UpdateCompanion<ProductEntity> {
  final Value<String> id;
  final Value<String> originalId;
  final Value<String> title;
  final Value<String> brand;
  final Value<String> description;
  final Value<String> actualPrice;
  final Value<String> sellingPrice;
  final Value<String> discount;
  final Value<int> priceNumeric;
  final Value<double> discountPercentage;
  final Value<String> category;
  final Value<String> subCategory;
  final Value<bool> outOfStock;
  final Value<String> seller;
  final Value<String> averageRating;
  final Value<double> ratingNumeric;
  final Value<List<String>> images;
  final Value<ProductDetails?> productDetails;
  final Value<String> primaryImage;
  final Value<String> url;
  final Value<String> pid;
  final Value<String> styleCode;
  final Value<DateTime?> crawledAt;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<int> viewCount;
  final Value<int> clickCount;
  final Value<bool> featured;
  final Value<int> rowid;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.originalId = const Value.absent(),
    this.title = const Value.absent(),
    this.brand = const Value.absent(),
    this.description = const Value.absent(),
    this.actualPrice = const Value.absent(),
    this.sellingPrice = const Value.absent(),
    this.discount = const Value.absent(),
    this.priceNumeric = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.category = const Value.absent(),
    this.subCategory = const Value.absent(),
    this.outOfStock = const Value.absent(),
    this.seller = const Value.absent(),
    this.averageRating = const Value.absent(),
    this.ratingNumeric = const Value.absent(),
    this.images = const Value.absent(),
    this.productDetails = const Value.absent(),
    this.primaryImage = const Value.absent(),
    this.url = const Value.absent(),
    this.pid = const Value.absent(),
    this.styleCode = const Value.absent(),
    this.crawledAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.viewCount = const Value.absent(),
    this.clickCount = const Value.absent(),
    this.featured = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductsCompanion.insert({
    required String id,
    this.originalId = const Value.absent(),
    this.title = const Value.absent(),
    this.brand = const Value.absent(),
    this.description = const Value.absent(),
    this.actualPrice = const Value.absent(),
    this.sellingPrice = const Value.absent(),
    this.discount = const Value.absent(),
    this.priceNumeric = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.category = const Value.absent(),
    this.subCategory = const Value.absent(),
    this.outOfStock = const Value.absent(),
    this.seller = const Value.absent(),
    this.averageRating = const Value.absent(),
    this.ratingNumeric = const Value.absent(),
    required List<String> images,
    this.productDetails = const Value.absent(),
    this.primaryImage = const Value.absent(),
    this.url = const Value.absent(),
    this.pid = const Value.absent(),
    this.styleCode = const Value.absent(),
    this.crawledAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.viewCount = const Value.absent(),
    this.clickCount = const Value.absent(),
    this.featured = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       images = Value(images);
  static Insertable<ProductEntity> custom({
    Expression<String>? id,
    Expression<String>? originalId,
    Expression<String>? title,
    Expression<String>? brand,
    Expression<String>? description,
    Expression<String>? actualPrice,
    Expression<String>? sellingPrice,
    Expression<String>? discount,
    Expression<int>? priceNumeric,
    Expression<double>? discountPercentage,
    Expression<String>? category,
    Expression<String>? subCategory,
    Expression<bool>? outOfStock,
    Expression<String>? seller,
    Expression<String>? averageRating,
    Expression<double>? ratingNumeric,
    Expression<String>? images,
    Expression<String>? productDetails,
    Expression<String>? primaryImage,
    Expression<String>? url,
    Expression<String>? pid,
    Expression<String>? styleCode,
    Expression<DateTime>? crawledAt,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? viewCount,
    Expression<int>? clickCount,
    Expression<bool>? featured,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (originalId != null) 'original_id': originalId,
      if (title != null) 'title': title,
      if (brand != null) 'brand': brand,
      if (description != null) 'description': description,
      if (actualPrice != null) 'actual_price': actualPrice,
      if (sellingPrice != null) 'selling_price': sellingPrice,
      if (discount != null) 'discount': discount,
      if (priceNumeric != null) 'price_numeric': priceNumeric,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (category != null) 'category': category,
      if (subCategory != null) 'sub_category': subCategory,
      if (outOfStock != null) 'out_of_stock': outOfStock,
      if (seller != null) 'seller': seller,
      if (averageRating != null) 'average_rating': averageRating,
      if (ratingNumeric != null) 'rating_numeric': ratingNumeric,
      if (images != null) 'images': images,
      if (productDetails != null) 'product_details': productDetails,
      if (primaryImage != null) 'primary_image': primaryImage,
      if (url != null) 'url': url,
      if (pid != null) 'pid': pid,
      if (styleCode != null) 'style_code': styleCode,
      if (crawledAt != null) 'crawled_at': crawledAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (viewCount != null) 'view_count': viewCount,
      if (clickCount != null) 'click_count': clickCount,
      if (featured != null) 'featured': featured,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductsCompanion copyWith({
    Value<String>? id,
    Value<String>? originalId,
    Value<String>? title,
    Value<String>? brand,
    Value<String>? description,
    Value<String>? actualPrice,
    Value<String>? sellingPrice,
    Value<String>? discount,
    Value<int>? priceNumeric,
    Value<double>? discountPercentage,
    Value<String>? category,
    Value<String>? subCategory,
    Value<bool>? outOfStock,
    Value<String>? seller,
    Value<String>? averageRating,
    Value<double>? ratingNumeric,
    Value<List<String>>? images,
    Value<ProductDetails?>? productDetails,
    Value<String>? primaryImage,
    Value<String>? url,
    Value<String>? pid,
    Value<String>? styleCode,
    Value<DateTime?>? crawledAt,
    Value<DateTime?>? createdAt,
    Value<DateTime?>? updatedAt,
    Value<int>? viewCount,
    Value<int>? clickCount,
    Value<bool>? featured,
    Value<int>? rowid,
  }) {
    return ProductsCompanion(
      id: id ?? this.id,
      originalId: originalId ?? this.originalId,
      title: title ?? this.title,
      brand: brand ?? this.brand,
      description: description ?? this.description,
      actualPrice: actualPrice ?? this.actualPrice,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      discount: discount ?? this.discount,
      priceNumeric: priceNumeric ?? this.priceNumeric,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      outOfStock: outOfStock ?? this.outOfStock,
      seller: seller ?? this.seller,
      averageRating: averageRating ?? this.averageRating,
      ratingNumeric: ratingNumeric ?? this.ratingNumeric,
      images: images ?? this.images,
      productDetails: productDetails ?? this.productDetails,
      primaryImage: primaryImage ?? this.primaryImage,
      url: url ?? this.url,
      pid: pid ?? this.pid,
      styleCode: styleCode ?? this.styleCode,
      crawledAt: crawledAt ?? this.crawledAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      viewCount: viewCount ?? this.viewCount,
      clickCount: clickCount ?? this.clickCount,
      featured: featured ?? this.featured,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (originalId.present) {
      map['original_id'] = Variable<String>(originalId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (actualPrice.present) {
      map['actual_price'] = Variable<String>(actualPrice.value);
    }
    if (sellingPrice.present) {
      map['selling_price'] = Variable<String>(sellingPrice.value);
    }
    if (discount.present) {
      map['discount'] = Variable<String>(discount.value);
    }
    if (priceNumeric.present) {
      map['price_numeric'] = Variable<int>(priceNumeric.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (subCategory.present) {
      map['sub_category'] = Variable<String>(subCategory.value);
    }
    if (outOfStock.present) {
      map['out_of_stock'] = Variable<bool>(outOfStock.value);
    }
    if (seller.present) {
      map['seller'] = Variable<String>(seller.value);
    }
    if (averageRating.present) {
      map['average_rating'] = Variable<String>(averageRating.value);
    }
    if (ratingNumeric.present) {
      map['rating_numeric'] = Variable<double>(ratingNumeric.value);
    }
    if (images.present) {
      map['images'] = Variable<String>(
        $ProductsTable.$converterimages.toSql(images.value),
      );
    }
    if (productDetails.present) {
      map['product_details'] = Variable<String>(
        $ProductsTable.$converterproductDetailsn.toSql(productDetails.value),
      );
    }
    if (primaryImage.present) {
      map['primary_image'] = Variable<String>(primaryImage.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (pid.present) {
      map['pid'] = Variable<String>(pid.value);
    }
    if (styleCode.present) {
      map['style_code'] = Variable<String>(styleCode.value);
    }
    if (crawledAt.present) {
      map['crawled_at'] = Variable<DateTime>(crawledAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (viewCount.present) {
      map['view_count'] = Variable<int>(viewCount.value);
    }
    if (clickCount.present) {
      map['click_count'] = Variable<int>(clickCount.value);
    }
    if (featured.present) {
      map['featured'] = Variable<bool>(featured.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('originalId: $originalId, ')
          ..write('title: $title, ')
          ..write('brand: $brand, ')
          ..write('description: $description, ')
          ..write('actualPrice: $actualPrice, ')
          ..write('sellingPrice: $sellingPrice, ')
          ..write('discount: $discount, ')
          ..write('priceNumeric: $priceNumeric, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('category: $category, ')
          ..write('subCategory: $subCategory, ')
          ..write('outOfStock: $outOfStock, ')
          ..write('seller: $seller, ')
          ..write('averageRating: $averageRating, ')
          ..write('ratingNumeric: $ratingNumeric, ')
          ..write('images: $images, ')
          ..write('productDetails: $productDetails, ')
          ..write('primaryImage: $primaryImage, ')
          ..write('url: $url, ')
          ..write('pid: $pid, ')
          ..write('styleCode: $styleCode, ')
          ..write('crawledAt: $crawledAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('viewCount: $viewCount, ')
          ..write('clickCount: $clickCount, ')
          ..write('featured: $featured, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductsTable products = $ProductsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [products];
}

typedef $$ProductsTableCreateCompanionBuilder =
    ProductsCompanion Function({
      required String id,
      Value<String> originalId,
      Value<String> title,
      Value<String> brand,
      Value<String> description,
      Value<String> actualPrice,
      Value<String> sellingPrice,
      Value<String> discount,
      Value<int> priceNumeric,
      Value<double> discountPercentage,
      Value<String> category,
      Value<String> subCategory,
      Value<bool> outOfStock,
      Value<String> seller,
      Value<String> averageRating,
      Value<double> ratingNumeric,
      required List<String> images,
      Value<ProductDetails?> productDetails,
      Value<String> primaryImage,
      Value<String> url,
      Value<String> pid,
      Value<String> styleCode,
      Value<DateTime?> crawledAt,
      Value<DateTime?> createdAt,
      Value<DateTime?> updatedAt,
      Value<int> viewCount,
      Value<int> clickCount,
      Value<bool> featured,
      Value<int> rowid,
    });
typedef $$ProductsTableUpdateCompanionBuilder =
    ProductsCompanion Function({
      Value<String> id,
      Value<String> originalId,
      Value<String> title,
      Value<String> brand,
      Value<String> description,
      Value<String> actualPrice,
      Value<String> sellingPrice,
      Value<String> discount,
      Value<int> priceNumeric,
      Value<double> discountPercentage,
      Value<String> category,
      Value<String> subCategory,
      Value<bool> outOfStock,
      Value<String> seller,
      Value<String> averageRating,
      Value<double> ratingNumeric,
      Value<List<String>> images,
      Value<ProductDetails?> productDetails,
      Value<String> primaryImage,
      Value<String> url,
      Value<String> pid,
      Value<String> styleCode,
      Value<DateTime?> crawledAt,
      Value<DateTime?> createdAt,
      Value<DateTime?> updatedAt,
      Value<int> viewCount,
      Value<int> clickCount,
      Value<bool> featured,
      Value<int> rowid,
    });

class $$ProductsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalId => $composableBuilder(
    column: $table.originalId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get actualPrice => $composableBuilder(
    column: $table.actualPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sellingPrice => $composableBuilder(
    column: $table.sellingPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get discount => $composableBuilder(
    column: $table.discount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get priceNumeric => $composableBuilder(
    column: $table.priceNumeric,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get discountPercentage => $composableBuilder(
    column: $table.discountPercentage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subCategory => $composableBuilder(
    column: $table.subCategory,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get outOfStock => $composableBuilder(
    column: $table.outOfStock,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get seller => $composableBuilder(
    column: $table.seller,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get averageRating => $composableBuilder(
    column: $table.averageRating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get ratingNumeric => $composableBuilder(
    column: $table.ratingNumeric,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
  get images => $composableBuilder(
    column: $table.images,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<ProductDetails?, ProductDetails, String>
  get productDetails => $composableBuilder(
    column: $table.productDetails,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get primaryImage => $composableBuilder(
    column: $table.primaryImage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pid => $composableBuilder(
    column: $table.pid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get styleCode => $composableBuilder(
    column: $table.styleCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get crawledAt => $composableBuilder(
    column: $table.crawledAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get viewCount => $composableBuilder(
    column: $table.viewCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get clickCount => $composableBuilder(
    column: $table.clickCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get featured => $composableBuilder(
    column: $table.featured,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalId => $composableBuilder(
    column: $table.originalId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get actualPrice => $composableBuilder(
    column: $table.actualPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sellingPrice => $composableBuilder(
    column: $table.sellingPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get discount => $composableBuilder(
    column: $table.discount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get priceNumeric => $composableBuilder(
    column: $table.priceNumeric,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get discountPercentage => $composableBuilder(
    column: $table.discountPercentage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subCategory => $composableBuilder(
    column: $table.subCategory,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get outOfStock => $composableBuilder(
    column: $table.outOfStock,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get seller => $composableBuilder(
    column: $table.seller,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get averageRating => $composableBuilder(
    column: $table.averageRating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get ratingNumeric => $composableBuilder(
    column: $table.ratingNumeric,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get images => $composableBuilder(
    column: $table.images,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productDetails => $composableBuilder(
    column: $table.productDetails,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get primaryImage => $composableBuilder(
    column: $table.primaryImage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pid => $composableBuilder(
    column: $table.pid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get styleCode => $composableBuilder(
    column: $table.styleCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get crawledAt => $composableBuilder(
    column: $table.crawledAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get viewCount => $composableBuilder(
    column: $table.viewCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get clickCount => $composableBuilder(
    column: $table.clickCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get featured => $composableBuilder(
    column: $table.featured,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get originalId => $composableBuilder(
    column: $table.originalId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get actualPrice => $composableBuilder(
    column: $table.actualPrice,
    builder: (column) => column,
  );

  GeneratedColumn<String> get sellingPrice => $composableBuilder(
    column: $table.sellingPrice,
    builder: (column) => column,
  );

  GeneratedColumn<String> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<int> get priceNumeric => $composableBuilder(
    column: $table.priceNumeric,
    builder: (column) => column,
  );

  GeneratedColumn<double> get discountPercentage => $composableBuilder(
    column: $table.discountPercentage,
    builder: (column) => column,
  );

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get subCategory => $composableBuilder(
    column: $table.subCategory,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get outOfStock => $composableBuilder(
    column: $table.outOfStock,
    builder: (column) => column,
  );

  GeneratedColumn<String> get seller =>
      $composableBuilder(column: $table.seller, builder: (column) => column);

  GeneratedColumn<String> get averageRating => $composableBuilder(
    column: $table.averageRating,
    builder: (column) => column,
  );

  GeneratedColumn<double> get ratingNumeric => $composableBuilder(
    column: $table.ratingNumeric,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<String>, String> get images =>
      $composableBuilder(column: $table.images, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ProductDetails?, String>
  get productDetails => $composableBuilder(
    column: $table.productDetails,
    builder: (column) => column,
  );

  GeneratedColumn<String> get primaryImage => $composableBuilder(
    column: $table.primaryImage,
    builder: (column) => column,
  );

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get pid =>
      $composableBuilder(column: $table.pid, builder: (column) => column);

  GeneratedColumn<String> get styleCode =>
      $composableBuilder(column: $table.styleCode, builder: (column) => column);

  GeneratedColumn<DateTime> get crawledAt =>
      $composableBuilder(column: $table.crawledAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<int> get viewCount =>
      $composableBuilder(column: $table.viewCount, builder: (column) => column);

  GeneratedColumn<int> get clickCount => $composableBuilder(
    column: $table.clickCount,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get featured =>
      $composableBuilder(column: $table.featured, builder: (column) => column);
}

class $$ProductsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductsTable,
          ProductEntity,
          $$ProductsTableFilterComposer,
          $$ProductsTableOrderingComposer,
          $$ProductsTableAnnotationComposer,
          $$ProductsTableCreateCompanionBuilder,
          $$ProductsTableUpdateCompanionBuilder,
          (
            ProductEntity,
            BaseReferences<_$AppDatabase, $ProductsTable, ProductEntity>,
          ),
          ProductEntity,
          PrefetchHooks Function()
        > {
  $$ProductsTableTableManager(_$AppDatabase db, $ProductsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> originalId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> brand = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> actualPrice = const Value.absent(),
                Value<String> sellingPrice = const Value.absent(),
                Value<String> discount = const Value.absent(),
                Value<int> priceNumeric = const Value.absent(),
                Value<double> discountPercentage = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<String> subCategory = const Value.absent(),
                Value<bool> outOfStock = const Value.absent(),
                Value<String> seller = const Value.absent(),
                Value<String> averageRating = const Value.absent(),
                Value<double> ratingNumeric = const Value.absent(),
                Value<List<String>> images = const Value.absent(),
                Value<ProductDetails?> productDetails = const Value.absent(),
                Value<String> primaryImage = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<String> pid = const Value.absent(),
                Value<String> styleCode = const Value.absent(),
                Value<DateTime?> crawledAt = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<int> viewCount = const Value.absent(),
                Value<int> clickCount = const Value.absent(),
                Value<bool> featured = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion(
                id: id,
                originalId: originalId,
                title: title,
                brand: brand,
                description: description,
                actualPrice: actualPrice,
                sellingPrice: sellingPrice,
                discount: discount,
                priceNumeric: priceNumeric,
                discountPercentage: discountPercentage,
                category: category,
                subCategory: subCategory,
                outOfStock: outOfStock,
                seller: seller,
                averageRating: averageRating,
                ratingNumeric: ratingNumeric,
                images: images,
                productDetails: productDetails,
                primaryImage: primaryImage,
                url: url,
                pid: pid,
                styleCode: styleCode,
                crawledAt: crawledAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                viewCount: viewCount,
                clickCount: clickCount,
                featured: featured,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String> originalId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> brand = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> actualPrice = const Value.absent(),
                Value<String> sellingPrice = const Value.absent(),
                Value<String> discount = const Value.absent(),
                Value<int> priceNumeric = const Value.absent(),
                Value<double> discountPercentage = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<String> subCategory = const Value.absent(),
                Value<bool> outOfStock = const Value.absent(),
                Value<String> seller = const Value.absent(),
                Value<String> averageRating = const Value.absent(),
                Value<double> ratingNumeric = const Value.absent(),
                required List<String> images,
                Value<ProductDetails?> productDetails = const Value.absent(),
                Value<String> primaryImage = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<String> pid = const Value.absent(),
                Value<String> styleCode = const Value.absent(),
                Value<DateTime?> crawledAt = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
                Value<int> viewCount = const Value.absent(),
                Value<int> clickCount = const Value.absent(),
                Value<bool> featured = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion.insert(
                id: id,
                originalId: originalId,
                title: title,
                brand: brand,
                description: description,
                actualPrice: actualPrice,
                sellingPrice: sellingPrice,
                discount: discount,
                priceNumeric: priceNumeric,
                discountPercentage: discountPercentage,
                category: category,
                subCategory: subCategory,
                outOfStock: outOfStock,
                seller: seller,
                averageRating: averageRating,
                ratingNumeric: ratingNumeric,
                images: images,
                productDetails: productDetails,
                primaryImage: primaryImage,
                url: url,
                pid: pid,
                styleCode: styleCode,
                crawledAt: crawledAt,
                createdAt: createdAt,
                updatedAt: updatedAt,
                viewCount: viewCount,
                clickCount: clickCount,
                featured: featured,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductsTable,
      ProductEntity,
      $$ProductsTableFilterComposer,
      $$ProductsTableOrderingComposer,
      $$ProductsTableAnnotationComposer,
      $$ProductsTableCreateCompanionBuilder,
      $$ProductsTableUpdateCompanionBuilder,
      (
        ProductEntity,
        BaseReferences<_$AppDatabase, $ProductsTable, ProductEntity>,
      ),
      ProductEntity,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db, _db.products);
}
