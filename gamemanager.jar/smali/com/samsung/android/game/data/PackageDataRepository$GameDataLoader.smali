.class public Lcom/samsung/android/game/data/PackageDataRepository$GameDataLoader;
.super Ljava/lang/Object;
.source "PackageDataRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/data/PackageDataRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameDataLoader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addGameData(Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;Ljava/lang/String;I)V
    .locals 2
    .param p1, "gameDataRepository"    # Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 42
    new-instance v0, Lcom/samsung/android/game/SemPackageConfiguration;

    invoke-direct {v0, p2}, Lcom/samsung/android/game/SemPackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "config":Lcom/samsung/android/game/SemPackageConfiguration;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/SemPackageConfiguration;->setCategory(I)V

    .line 44
    invoke-virtual {p1, p2, p3, v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->add(Ljava/lang/String;ILcom/samsung/android/game/SemPackageConfiguration;)V

    .line 45
    return-void
.end method


# virtual methods
.method public loadGameDataIncludingSecureFolder(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 19
    new-instance v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-direct {v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;-><init>()V

    .line 20
    .local v0, "gameDataRepository":Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    new-instance v1, Lcom/samsung/android/game/PmAppCategoryManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/game/PmAppCategoryManager;->getGamePackageNameListFromAllUsers()Ljava/util/List;

    move-result-object v1

    .line 22
    .local v1, "gamePackageNameListFromAllUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/samsung/android/game/Util;->getInstalledPackageNameList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 24
    .local v2, "packageNamesFromMainUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 25
    .local v3, "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/samsung/android/game/Util;->getSecureFolderUserId(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    .line 26
    .local v4, "secureFolderUserId":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p1, v5}, Lcom/samsung/android/game/Util;->getInstalledPackageNameList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 30
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 31
    .local v6, "gamePackageName":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
    invoke-direct {p0, v0, v6, p2}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataLoader;->addGameData(Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;Ljava/lang/String;I)V

    .line 35
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 36
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v0, v6, v7}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataLoader;->addGameData(Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;Ljava/lang/String;I)V

    .line 38
    .end local v6    # "gamePackageName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 39
    :cond_3
    return-void
.end method
