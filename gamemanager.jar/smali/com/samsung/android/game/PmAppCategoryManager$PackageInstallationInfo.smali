.class public Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;
.super Ljava/lang/Object;
.source "PmAppCategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/PmAppCategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageInstallationInfo"
.end annotation


# instance fields
.field private final categoryInfo:[Ljava/lang/String;

.field private final categorySource:Ljava/lang/String;

.field private final installerPackageName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final userIdSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/samsung/android/game/PmAppCategoryManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "pmAppCategoryManager"    # Lcom/samsung/android/game/PmAppCategoryManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p3, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->packageName:Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->initInstallerPackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->installerPackageName:Ljava/lang/String;

    .line 185
    invoke-static {p2, p3}, Lcom/samsung/android/game/PmAppCategoryManager;->-$$Nest$mgetCategoryInfo(Lcom/samsung/android/game/PmAppCategoryManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->categoryInfo:[Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->categoryInfo:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/samsung/android/game/PmAppCategoryManager;->-$$Nest$mgetCategorySource(Lcom/samsung/android/game/PmAppCategoryManager;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->categorySource:Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->userIdSet:Ljava/util/TreeSet;

    .line 188
    return-void
.end method

.method private initInstallerPackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    .line 217
    .local v0, "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "installSourceInfo":Landroid/content/pm/InstallSourceInfo;
    .local v1, "installerPackageName":Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v1    # "installerPackageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "NameNotFoundException"

    .line 222
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "installerPackageName":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method static synthetic lambda$getUserIdCsv$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addUserId(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->userIdSet:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public getCategoryInfo()[Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->categoryInfo:[Ljava/lang/String;

    return-object v0
.end method

.method public getCategorySource()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->categorySource:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdCsv()Ljava/lang/String;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->userIdSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 204
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 205
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    .line 206
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    return-object v0
.end method
