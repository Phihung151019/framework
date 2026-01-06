.class public final Lkotlinx/coroutines/internal/ExceptionsConstructorKt;
.super Ljava/lang/Object;
.source "ExceptionsConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1#2:115\n11158#3:116\n11493#3,3:117\n12727#3,3:134\n1971#4,14:120\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n42#1:116\n42#1:117,3\n79#1:134,3\n60#1:120,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a!\u0010\u0007\u001a\u0004\u0018\u0001H\u0008\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00042\u0006\u0010\t\u001a\u0002H\u0008H\u0000\u00a2\u0006\u0002\u0010\n\u001a2\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003j\u0002`\u000c\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u000eH\u0002\u001a.\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003j\u0002`\u000c2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\u0002\u001a\u0018\u0010\u0011\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u000e2\u0006\u0010\u0012\u001a\u00020\u0001H\u0002\u001a\u001b\u0010\u0013\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0001H\u0082\u0010\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000*(\u0008\u0002\u0010\u0002\"\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a8\u0006\u0015"
    }
    d2 = {
        "throwableFields",
        "",
        "Ctor",
        "Lkotlin/Function1;",
        "",
        "ctorCache",
        "Lkotlinx/coroutines/internal/CtorCache;",
        "tryCopyException",
        "E",
        "exception",
        "(Ljava/lang/Throwable;)Ljava/lang/Throwable;",
        "createConstructor",
        "Lkotlinx/coroutines/internal/Ctor;",
        "clz",
        "Ljava/lang/Class;",
        "safeCtor",
        "block",
        "fieldsCountOrDefault",
        "defaultValue",
        "fieldsCount",
        "accumulator",
        "external__kotlinx.coroutines__linux_glibc_common__kotlinx_coroutines-host"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ctorCache:Lkotlinx/coroutines/internal/CtorCache;

.field private static final throwableFields:I


# direct methods
.method public static synthetic $r8$lambda$2WnEaEbRS_jgn5zxW2M9wSfYUhc(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->createConstructor$lambda$7$lambda$6(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CD5gG7I67JpQqd8eaGEB6nQzOjU(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->safeCtor$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HDTDWXeEwBmO1DYmg_dY7NcRVoc(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->createConstructor$lambda$7$lambda$4(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YCulj4fnQ73RVsCU6X0tr4WSTEc(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->createConstructor$lambda$7$lambda$3(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$twfIcVUsAnsEQswo7ziCHj_2OpY(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->createConstructor$lambda$7$lambda$1(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-class v0, Ljava/lang/Throwable;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCountOrDefault(Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->throwableFields:I

    .line 13
    nop

    .line 14
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/FastServiceLoaderKt;->getANDROID_DETECTED()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/internal/WeakMapCtorCache;->INSTANCE:Lkotlinx/coroutines/internal/WeakMapCtorCache;

    check-cast v0, Lkotlinx/coroutines/internal/CtorCache;

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lkotlinx/coroutines/internal/ClassValueCtorCache;->INSTANCE:Lkotlinx/coroutines/internal/ClassValueCtorCache;

    check-cast v0, Lkotlinx/coroutines/internal/CtorCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    .line 16
    :catchall_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lkotlinx/coroutines/internal/WeakMapCtorCache;->INSTANCE:Lkotlinx/coroutines/internal/WeakMapCtorCache;

    check-cast v1, Lkotlinx/coroutines/internal/CtorCache;

    move-object v0, v1

    .line 13
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    sput-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->ctorCache:Lkotlinx/coroutines/internal/CtorCache;

    return-void
.end method

.method public static final synthetic access$createConstructor(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "clz"    # Ljava/lang/Class;

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->createConstructor(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructor(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;
    .locals 19
    .param p0, "clz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$nullResult$1;->INSTANCE:Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$nullResult$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 33
    .local v0, "nullResult":Lkotlin/jvm/functions/Function1;
    sget v1, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->throwableFields:I

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCountOrDefault(Ljava/lang/Class;I)I

    move-result v4

    if-eq v1, v4, :cond_0

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-string v4, "getConstructors(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    .local v1, "$this$map$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 116
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v1

    .local v6, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 117
    .local v7, "$i$f$mapTo":I
    array-length v8, v6

    move v9, v2

    :goto_0
    const/4 v10, 0x0

    if-ge v9, v8, :cond_4

    aget-object v11, v6, v9

    .line 118
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/reflect/Constructor;

    .local v12, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v13, 0x0

    .line 43
    .local v13, "$i$a$-map-ExceptionsConstructorKt$createConstructor$1":I
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 44
    .local v14, "p":[Ljava/lang/Class;
    array-length v15, v14

    const/16 v16, 0x1

    const/16 v17, -0x1

    packed-switch v15, :pswitch_data_0

    .line 58
    move/from16 v18, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto/16 :goto_1

    .line 45
    :pswitch_0
    nop

    .line 46
    aget-object v15, v14, v2

    move/from16 v18, v2

    const-class v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v14, v16

    const-class v15, Ljava/lang/Throwable;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, v12}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_1

    .line 48
    :cond_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_1

    .line 50
    :pswitch_1
    move/from16 v18, v2

    aget-object v2, v14, v18

    .line 51
    const-class v15, Ljava/lang/String;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 52
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda2;

    invoke-direct {v2, v12}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_1

    .line 53
    :cond_2
    const-class v15, Ljava/lang/Throwable;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda3;

    invoke-direct {v2, v12}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_1

    .line 55
    :cond_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_1

    .line 57
    :pswitch_2
    move/from16 v18, v2

    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda4;

    invoke-direct {v2, v12}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 59
    :goto_1
    nop

    .line 118
    .end local v12    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v13    # "$i$a$-map-ExceptionsConstructorKt$createConstructor$1":I
    .end local v14    # "p":[Ljava/lang/Class;
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v18

    goto/16 :goto_0

    .line 119
    :cond_4
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$mapTo":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 116
    nop

    .line 42
    .end local v1    # "$this$map$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 60
    nop

    .local v2, "$this$maxByOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 120
    .local v1, "$i$f$maxByOrNull":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 121
    .local v4, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 122
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 123
    .local v10, "maxElem$iv":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    .line 124
    :cond_6
    move-object v5, v10

    check-cast v5, Lkotlin/Pair;

    .local v5, "p0":Lkotlin/Pair;
    const/4 v6, 0x0

    .line 60
    .local v6, "$i$a$-maxByOrNull-ExceptionsConstructorKt$createConstructor$2":I
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 124
    .end local v5    # "p0":Lkotlin/Pair;
    .end local v6    # "$i$a$-maxByOrNull-ExceptionsConstructorKt$createConstructor$2":I
    nop

    .line 126
    .local v5, "maxValue$iv":I
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 127
    .local v6, "e$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    .local v7, "p0":Lkotlin/Pair;
    const/4 v8, 0x0

    .line 60
    .local v8, "$i$a$-maxByOrNull-ExceptionsConstructorKt$createConstructor$2":I
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 127
    .end local v7    # "p0":Lkotlin/Pair;
    .end local v8    # "$i$a$-maxByOrNull-ExceptionsConstructorKt$createConstructor$2":I
    nop

    .line 128
    .local v7, "v$iv":I
    if-ge v5, v7, :cond_8

    .line 129
    move-object v8, v6

    .line 130
    .end local v10    # "maxElem$iv":Ljava/lang/Object;
    .local v8, "maxElem$iv":Ljava/lang/Object;
    move v5, v7

    move-object v10, v8

    .line 132
    .end local v6    # "e$iv":Ljava/lang/Object;
    .end local v7    # "v$iv":I
    .end local v8    # "maxElem$iv":Ljava/lang/Object;
    .restart local v10    # "maxElem$iv":Ljava/lang/Object;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 133
    nop

    .line 60
    .end local v1    # "$i$f$maxByOrNull":I
    .end local v2    # "$this$maxByOrNull$iv":Ljava/lang/Iterable;
    .end local v4    # "iterator$iv":Ljava/util/Iterator;
    .end local v5    # "maxValue$iv":I
    .end local v10    # "maxElem$iv":Ljava/lang/Object;
    :goto_2
    check-cast v10, Lkotlin/Pair;

    if-eqz v10, :cond_9

    .line 42
    nop

    .line 60
    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 42
    if-eqz v1, :cond_9

    goto :goto_3

    .line 60
    :cond_9
    move-object v1, v0

    .line 42
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final createConstructor$lambda$7$lambda$1(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "$constructor"    # Ljava/lang/reflect/Constructor;
    .param p1, "e"    # Ljava/lang/Throwable;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final createConstructor$lambda$7$lambda$3(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "$constructor"    # Ljava/lang/reflect/Constructor;
    .param p1, "e"    # Ljava/lang/Throwable;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    move-object v1, v0

    .line 115
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 52
    .local v2, "$i$a$-also-ExceptionsConstructorKt$createConstructor$1$2$1":I
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-also-ExceptionsConstructorKt$createConstructor$1$2$1":I
    return-object v0
.end method

.method private static final createConstructor$lambda$7$lambda$4(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "$constructor"    # Ljava/lang/reflect/Constructor;
    .param p1, "e"    # Ljava/lang/Throwable;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final createConstructor$lambda$7$lambda$6(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "$constructor"    # Ljava/lang/reflect/Constructor;
    .param p1, "e"    # Ljava/lang/Throwable;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    move-object v1, v0

    .line 115
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$a$-also-ExceptionsConstructorKt$createConstructor$1$4$1":I
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-also-ExceptionsConstructorKt$createConstructor$1$4$1":I
    return-object v0
.end method

.method private static final fieldsCount(Ljava/lang/Class;I)I
    .locals 9
    .param p0, "$this$fieldsCount"    # Ljava/lang/Class;
    .param p1, "accumulator"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 79
    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "getDeclaredFields(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .local v0, "$this$count$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 134
    .local v1, "$i$f$count":I
    const/4 v2, 0x0

    .line 135
    .local v2, "count$iv":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/Field;

    .local v6, "it":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 79
    .local v7, "$i$a$-count-ExceptionsConstructorKt$fieldsCount$fieldsCount$1":I
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    .line 135
    .end local v6    # "it":Ljava/lang/reflect/Field;
    .end local v7    # "$i$a$-count-ExceptionsConstructorKt$fieldsCount$fieldsCount$1":I
    if-nez v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 136
    :cond_1
    nop

    .line 79
    .end local v0    # "$this$count$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$count":I
    .end local v2    # "count$iv":I
    nop

    .line 80
    .local v2, "fieldsCount":I
    add-int v0, p1, v2

    .line 81
    .local v0, "totalFields":I
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 82
    .local v1, "superClass":Ljava/lang/Class;
    :cond_2
    move-object p0, v1

    move p1, v0

    .end local v0    # "totalFields":I
    .end local v1    # "superClass":Ljava/lang/Class;
    .end local v2    # "fieldsCount":I
    goto :goto_0
.end method

.method static synthetic fieldsCount$default(Ljava/lang/Class;IILjava/lang/Object;)I
    .locals 0

    .line 78
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCount(Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method private static final fieldsCountOrDefault(Ljava/lang/Class;I)I
    .locals 5
    .param p0, "$this$fieldsCountOrDefault"    # Ljava/lang/Class;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 115
    .local v0, "$this$fieldsCountOrDefault_u24lambda_u2410":Lkotlin/reflect/KClass;
    const/4 v1, 0x0

    .line 76
    .local v1, "$i$a$-runCatching-ExceptionsConstructorKt$fieldsCountOrDefault$1":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v3}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCount$default(Ljava/lang/Class;IILjava/lang/Object;)I

    move-result v2

    .end local v0    # "$this$fieldsCountOrDefault_u24lambda_u2410":Lkotlin/reflect/KClass;
    .end local v1    # "$i$a$-runCatching-ExceptionsConstructorKt$fieldsCountOrDefault$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 73
    return-object v0
.end method

.method private static final safeCtor$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 5
    .param p0, "$block"    # Lkotlin/jvm/functions/Function1;
    .param p1, "e"    # Ljava/lang/Throwable;

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    .line 65
    .local v1, "$i$a$-runCatching-ExceptionsConstructorKt$safeCtor$1$1":I
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 70
    .local v2, "result":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 71
    :cond_0
    nop

    .line 64
    .end local v1    # "$i$a$-runCatching-ExceptionsConstructorKt$safeCtor$1$1":I
    .end local v2    # "result":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public static final tryCopyException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p0, Lkotlinx/coroutines/CopyableThrowable;

    if-eqz v0, :cond_1

    .line 25
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 115
    const/4 v0, 0x0

    .line 25
    .local v0, "$i$a$-runCatching-ExceptionsConstructorKt$tryCopyException$1":I
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CopyableThrowable;

    invoke-interface {v1}, Lkotlinx/coroutines/CopyableThrowable;->createCopy()Ljava/lang/Throwable;

    move-result-object v1

    .end local v0    # "$i$a$-runCatching-ExceptionsConstructorKt$tryCopyException$1":I
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 27
    :cond_1
    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->ctorCache:Lkotlinx/coroutines/internal/CtorCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/CtorCache;->get(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method
