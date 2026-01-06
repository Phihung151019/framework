.class public interface abstract Lcom/google/uwb/support/base/FlagEnum;
.super Ljava/lang/Object;
.source "FlagEnum.java"


# direct methods
.method public static longToEnumSet(J[Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 9
    .param p0, "flags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;:",
            "Lcom/google/uwb/support/base/FlagEnum;",
            ">(J[TE;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 68
    .local p2, "values":[Ljava/lang/Enum;, "[TE;"
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "flagList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 73
    .local v4, "value":Ljava/lang/Enum;, "TE;"
    move-object v5, v4

    check-cast v5, Lcom/google/uwb/support/base/FlagEnum;

    invoke-interface {v5}, Lcom/google/uwb/support/base/FlagEnum;->getValue()J

    move-result-wide v5

    and-long/2addr v5, p0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 74
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v4    # "value":Ljava/lang/Enum;, "TE;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    aget-object v1, p2, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 79
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    return-object v2

    .line 81
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :cond_2
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    return-object v1

    .line 69
    .end local v0    # "flagList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty FlagEnum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;
    .locals 7
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;:",
            "Lcom/google/uwb/support/base/FlagEnum;",
            ">(I[TE;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 42
    .local p1, "values":[Ljava/lang/Enum;, "[TE;"
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "flagList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 47
    .local v4, "value":Ljava/lang/Enum;, "TE;"
    move-object v5, v4

    check-cast v5, Lcom/google/uwb/support/base/FlagEnum;

    invoke-interface {v5}, Lcom/google/uwb/support/base/FlagEnum;->getValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    .line 48
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v4    # "value":Ljava/lang/Enum;, "TE;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    return-object v2

    .line 55
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :cond_2
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    return-object v1

    .line 43
    .end local v0    # "flagList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty FlagEnum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toInt(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;:",
            "Lcom/google/uwb/support/base/FlagEnum;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)I"
        }
    .end annotation

    .line 34
    .local p0, "enumSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const/4 v0, 0x0

    .line 35
    .local v0, "value":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 36
    .local v2, "flag":Ljava/lang/Enum;, "TE;"
    move-object v3, v2

    check-cast v3, Lcom/google/uwb/support/base/FlagEnum;

    invoke-interface {v3}, Lcom/google/uwb/support/base/FlagEnum;->getValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v3

    or-int/2addr v0, v3

    .line 37
    .end local v2    # "flag":Ljava/lang/Enum;, "TE;"
    goto :goto_0

    .line 38
    :cond_0
    return v0
.end method

.method public static toLong(Ljava/util/Set;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;:",
            "Lcom/google/uwb/support/base/FlagEnum;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)J"
        }
    .end annotation

    .line 60
    .local p0, "enumSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const-wide/16 v0, 0x0

    .line 61
    .local v0, "value":J
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 62
    .local v3, "flag":Ljava/lang/Enum;, "TE;"
    move-object v4, v3

    check-cast v4, Lcom/google/uwb/support/base/FlagEnum;

    invoke-interface {v4}, Lcom/google/uwb/support/base/FlagEnum;->getValue()J

    move-result-wide v4

    or-long/2addr v0, v4

    .line 63
    .end local v3    # "flag":Ljava/lang/Enum;, "TE;"
    goto :goto_0

    .line 64
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public abstract getValue()J
.end method
