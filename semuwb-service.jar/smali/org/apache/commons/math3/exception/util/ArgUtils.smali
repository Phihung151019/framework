.class public Lorg/apache/commons/math3/exception/util/ArgUtils;
.super Ljava/lang/Object;
.source "ArgUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flatten([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .param p0, "array"    # [Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p0, :cond_2

    .line 43
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 44
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 45
    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, Lorg/apache/commons/math3/exception/util/ArgUtils;->flatten([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/Object;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 46
    .local v8, "oR":Ljava/lang/Object;
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v8    # "oR":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v5    # "arr$":[Ljava/lang/Object;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_0
    goto :goto_2

    .line 49
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v4    # "o":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
