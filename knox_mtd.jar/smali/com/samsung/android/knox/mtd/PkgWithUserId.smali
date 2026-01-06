.class public Lcom/samsung/android/knox/mtd/PkgWithUserId;
.super Ljava/lang/Object;
.source "PkgWithUserId.java"


# instance fields
.field private final pkgName:Ljava/lang/String;

.field private final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "_pkgName"    # Ljava/lang/String;
    .param p2, "_userId"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/android/knox/mtd/PkgWithUserId;->pkgName:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/samsung/android/knox/mtd/PkgWithUserId;->userId:I

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "_pkg"    # Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 25
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/knox/mtd/PkgWithUserId;

    .line 28
    .local v2, "pkg":Lcom/samsung/android/knox/mtd/PkgWithUserId;
    iget-object v3, p0, Lcom/samsung/android/knox/mtd/PkgWithUserId;->pkgName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/knox/mtd/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/knox/mtd/PkgWithUserId;->userId:I

    invoke-virtual {v2}, Lcom/samsung/android/knox/mtd/PkgWithUserId;->getUserId()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 25
    .end local v2    # "pkg":Lcom/samsung/android/knox/mtd/PkgWithUserId;
    :cond_3
    :goto_1
    return v1
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/PkgWithUserId;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/samsung/android/knox/mtd/PkgWithUserId;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/PkgWithUserId;->pkgName:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/knox/mtd/PkgWithUserId;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
