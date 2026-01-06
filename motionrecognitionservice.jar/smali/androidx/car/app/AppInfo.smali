.class public final Landroidx/car/app/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field public static final MIN_API_LEVEL_METADATA_KEY:Ljava/lang/String; = "androidx.car.app.minCarApiLevel"


# instance fields
.field private final mLatestCarAppApiLevel:I

.field private final mLibraryVersion:Ljava/lang/String;

.field private final mMinCarAppApiLevel:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/AppInfo;->mMinCarAppApiLevel:I

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/car/app/AppInfo;->mLibraryVersion:Ljava/lang/String;

    .line 122
    iput v0, p0, Landroidx/car/app/AppInfo;->mLatestCarAppApiLevel:I

    .line 123
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "minCarAppApiLevel"    # I
    .param p2, "latestCarAppApiLevel"    # I
    .param p3, "libraryVersion"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Landroidx/car/app/AppInfo;->mMinCarAppApiLevel:I

    .line 114
    iput-object p3, p0, Landroidx/car/app/AppInfo;->mLibraryVersion:Ljava/lang/String;

    .line 115
    iput p2, p0, Landroidx/car/app/AppInfo;->mLatestCarAppApiLevel:I

    .line 116
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/car/app/AppInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 88
    invoke-static {p0}, Landroidx/car/app/AppInfo;->retrieveMinCarAppApiLevel(Landroid/content/Context;)I

    move-result v0

    .line 89
    .local v0, "minApiLevel":I
    invoke-static {}, Landroidx/car/app/versioning/CarAppApiLevels;->getOldest()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 90
    invoke-static {}, Landroidx/car/app/versioning/CarAppApiLevels;->getLatest()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 96
    new-instance v1, Landroidx/car/app/AppInfo;

    .line 97
    invoke-static {}, Landroidx/car/app/versioning/CarAppApiLevels;->getLatest()I

    move-result v2

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/car/app/R$string;->car_app_library_version:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroidx/car/app/AppInfo;-><init>(IILjava/lang/String;)V

    .line 96
    return-object v1

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min API level (androidx.car.app.minCarApiLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is out of range ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-static {}, Landroidx/car/app/versioning/CarAppApiLevels;->getOldest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-static {}, Landroidx/car/app/versioning/CarAppApiLevels;->getLatest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static retrieveMinCarAppApiLevel(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 131
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 134
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "androidx.car.app.minCarApiLevel"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 137
    :cond_0
    nop

    :goto_0
    nop

    .line 138
    .local v2, "apiLevel":I
    if-eqz v2, :cond_1

    .line 142
    return v2

    .line 139
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Min API level not declared in manifest (androidx.car.app.minCarApiLevel)"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "apiLevel":I
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to read min API level from manifest"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getLatestCarAppApiLevel()I
    .locals 1

    .line 164
    iget v0, p0, Landroidx/car/app/AppInfo;->mLatestCarAppApiLevel:I

    return v0
.end method

.method public getLibraryDisplayVersion()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/car/app/AppInfo;->mLibraryVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMinCarAppApiLevel()I
    .locals 1

    .line 159
    iget v0, p0, Landroidx/car/app/AppInfo;->mMinCarAppApiLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Library version: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/app/AppInfo;->getLibraryDisplayVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Min Car Api Level: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Landroidx/car/app/AppInfo;->getMinCarAppApiLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Latest Car App Api Level: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Landroidx/car/app/AppInfo;->getLatestCarAppApiLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method
