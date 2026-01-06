.class public final Landroidx/car/app/validation/HostValidator;
.super Ljava/lang/Object;
.source "HostValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/validation/HostValidator$Api28Impl;,
        Landroidx/car/app/validation/HostValidator$Builder;
    }
.end annotation


# static fields
.field public static final ALLOW_ALL_HOSTS_VALIDATOR:Landroidx/car/app/validation/HostValidator;

.field public static final TEMPLATE_RENDERER_PERMISSION:Ljava/lang/String; = "android.car.permission.TEMPLATE_RENDERER"


# instance fields
.field private final mAllowAllHosts:Z

.field private final mAllowedHosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallerChecked:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 91
    new-instance v0, Landroidx/car/app/validation/HostValidator;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/car/app/validation/HostValidator;-><init>(Landroid/content/pm/PackageManager;Ljava/util/Map;Z)V

    sput-object v0, Landroidx/car/app/validation/HostValidator;->ALLOW_ALL_HOSTS_VALIDATOR:Landroidx/car/app/validation/HostValidator;

    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/Map;Z)V
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "allowAllHosts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 77
    .local p2, "allowedHosts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/car/app/validation/HostValidator;->mCallerChecked:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Landroidx/car/app/validation/HostValidator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    iput-object p2, p0, Landroidx/car/app/validation/HostValidator;->mAllowedHosts:Ljava/util/Map;

    .line 80
    iput-boolean p3, p0, Landroidx/car/app/validation/HostValidator;->mAllowAllHosts:Z

    .line 81
    return-void
.end method

.method private checkCache(Landroidx/car/app/HostInfo;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "hostInfo"    # Landroidx/car/app/HostInfo;

    .line 243
    iget-object v0, p0, Landroidx/car/app/validation/HostValidator;->mCallerChecked:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/car/app/HostInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 244
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    return-object v1

    .line 249
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroidx/car/app/HostInfo;->getUid()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 250
    return-object v1

    .line 252
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    return-object v1
.end method

.method private getDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 9
    .param p1, "signature"    # Landroid/content/pm/Signature;

    .line 287
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 288
    .local v0, "data":[B
    invoke-static {}, Landroidx/car/app/validation/HostValidator;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 289
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    if-nez v1, :cond_0

    .line 291
    const/4 v2, 0x0

    return-object v2

    .line 293
    :cond_0
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 294
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 295
    .local v2, "digest":[B
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 296
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-byte v6, v2, v5

    .line 297
    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%02x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getMessageDigest()Ljava/security/MessageDigest;
    .locals 3

    .line 262
    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "CarApp.Val"

    const-string v2, "Could not find SHA256 hash algorithm"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 136
    const-string v0, "CarApp.Val"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/car/app/validation/HostValidator;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageManager is null. Package info cannot be found for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v1

    .line 143
    :cond_0
    nop

    .line 144
    iget-object v2, p0, Landroidx/car/app/validation/HostValidator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1}, Landroidx/car/app/validation/HostValidator$Api28Impl;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    return-object v1
.end method

.method private getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 272
    nop

    .line 274
    invoke-static {p1}, Landroidx/car/app/validation/HostValidator$Api28Impl;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method private static hasPermissionGranted(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "permission"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 308
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 309
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 312
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    const/4 v1, 0x1

    return v1

    .line 308
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 306
    :cond_3
    :goto_1
    return v1
.end method

.method private isAllowListed(Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 7
    .param p1, "hostPackageName"    # Ljava/lang/String;
    .param p2, "signatures"    # [Landroid/content/pm/Signature;

    .line 224
    iget-object v0, p0, Landroidx/car/app/validation/HostValidator;->mAllowedHosts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 225
    .local v0, "allowedDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 226
    return v1

    .line 228
    :cond_0
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 229
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-direct {p0, v4}, Landroidx/car/app/validation/HostValidator;->getDigest(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "digest":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    const/4 v1, 0x1

    return v1

    .line 228
    .end local v4    # "signature":Landroid/content/pm/Signature;
    .end local v5    # "digest":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_2
    return v1
.end method

.method private updateCache(Landroidx/car/app/HostInfo;Z)V
    .locals 4
    .param p1, "hostInfo"    # Landroidx/car/app/HostInfo;
    .param p2, "isValid"    # Z

    .line 256
    iget-object v0, p0, Landroidx/car/app/validation/HostValidator;->mCallerChecked:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/car/app/HostInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/car/app/HostInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method private validateHost(Landroidx/car/app/HostInfo;)Z
    .locals 11
    .param p1, "hostInfo"    # Landroidx/car/app/HostInfo;

    .line 156
    invoke-virtual {p1}, Landroidx/car/app/HostInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "hostPackageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroidx/car/app/validation/HostValidator;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 158
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    const-string v3, "CarApp.Val"

    if-nez v1, :cond_0

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejected - package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v2

    .line 163
    :cond_0
    invoke-direct {p0, v1}, Landroidx/car/app/validation/HostValidator;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v4

    .line 164
    .local v4, "signatures":[Landroid/content/pm/Signature;
    if-eqz v4, :cond_b

    array-length v5, v4

    if-nez v5, :cond_1

    goto/16 :goto_0

    .line 172
    :cond_1
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 173
    .local v5, "uid":I
    invoke-virtual {p1}, Landroidx/car/app/HostInfo;->getUid()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 178
    const-string v6, "android.car.permission.TEMPLATE_RENDERER"

    invoke-static {v1, v6}, Landroidx/car/app/validation/HostValidator;->hasPermissionGranted(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v6

    .line 179
    .local v6, "hasPermission":Z
    invoke-direct {p0, v0, v4}, Landroidx/car/app/validation/HostValidator;->isAllowListed(Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result v7

    .line 182
    .local v7, "isAllowListed":Z
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x3

    if-ne v5, v8, :cond_3

    .line 184
    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    const-string v2, "Accepted - Local service call"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2
    return v9

    .line 190
    :cond_3
    if-eqz v7, :cond_5

    .line 192
    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    const-string v2, "Accepted - Host in allow-list"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_4
    return v9

    .line 198
    :cond_5
    const/16 v8, 0x3e8

    if-ne v5, v8, :cond_7

    .line 200
    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 201
    const-string v2, "Accepted - System binding"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_6
    return v9

    .line 206
    :cond_7
    if-eqz v6, :cond_9

    .line 207
    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 208
    const-string v2, "Accepted - Host has android.car.permission.TEMPLATE_RENDERER"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_8
    return v9

    .line 213
    :cond_9
    aget-object v8, v4, v2

    .line 219
    invoke-direct {p0, v8}, Landroidx/car/app/validation/HostValidator;->getDigest(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 213
    const-string v9, "Unrecognized host.\nIf this is a valid caller, please add the following to your CarAppService#createHostValidator() implementation:\nreturn new HostValidator.Builder(context)\n\t.addAllowedHost(\"%s\", \"%s\");\n\t.build()"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return v2

    .line 174
    .end local v6    # "hasPermission":Z
    .end local v7    # "isAllowListed":Z
    :cond_a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " doesn\'t match caller\'s actual UID "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    .end local v5    # "uid":I
    :cond_b
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not signed or it has more than one signature"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v2
.end method


# virtual methods
.method public getAllowedHosts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroidx/car/app/validation/HostValidator;->mAllowedHosts:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isValidHost(Landroidx/car/app/HostInfo;)Z
    .locals 4
    .param p1, "hostInfo"    # Landroidx/car/app/HostInfo;

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "CarApp.Val"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evaluating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-boolean v2, p0, Landroidx/car/app/validation/HostValidator;->mAllowAllHosts:Z

    if-eqz v2, :cond_2

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const-string v1, "Accepted - Validator disabled, all hosts allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_2
    invoke-direct {p0, p1}, Landroidx/car/app/validation/HostValidator;->checkCache(Landroidx/car/app/HostInfo;)Ljava/lang/Boolean;

    move-result-object v0

    .line 112
    .local v0, "previousResult":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 117
    :cond_3
    invoke-direct {p0, p1}, Landroidx/car/app/validation/HostValidator;->validateHost(Landroidx/car/app/HostInfo;)Z

    move-result v1

    .line 120
    .local v1, "isValid":Z
    invoke-direct {p0, p1, v1}, Landroidx/car/app/validation/HostValidator;->updateCache(Landroidx/car/app/HostInfo;Z)V

    .line 121
    return v1
.end method
