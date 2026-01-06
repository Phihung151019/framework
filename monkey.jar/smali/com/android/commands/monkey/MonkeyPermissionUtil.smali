.class public Lcom/android/commands/monkey/MonkeyPermissionUtil;
.super Ljava/lang/Object;
.source "MonkeyPermissionUtil.java"


# static fields
.field private static final MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

.field private static final PERMISSION_GROUP_PREFIX:Ljava/lang/String; = "android.permission-group."

.field private static final PERMISSION_PREFIX:Ljava/lang/String; = "android.permission."


# instance fields
.field private final mPermManager:Landroid/permission/IPermissionManager;

.field private mPermissionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mTargetSystemPackages:Z

.field private mTargetedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 48
    const-string v7, "android.permission-group.MICROPHONE"

    const-string v8, "android.permission-group.STORAGE"

    const-string v0, "android.permission-group.CALENDAR"

    const-string v1, "android.permission-group.CAMERA"

    const-string v2, "android.permission-group.CONTACTS"

    const-string v3, "android.permission-group.LOCATION"

    const-string v4, "android.permission-group.SENSORS"

    const-string v5, "android.permission-group.SMS"

    const-string v6, "android.permission-group.PHONE"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPm:Landroid/content/pm/IPackageManager;

    .line 81
    nop

    .line 82
    const-string v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermManager:Landroid/permission/IPermissionManager;

    .line 83
    return-void
.end method

.method private static isModernPermissionGroup(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 59
    .local v4, "modernGroup":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    const/4 v0, 0x1

    return v0

    .line 58
    .end local v4    # "modernGroup":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_1
    return v2
.end method

.method private shouldTargetPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .line 96
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 97
    return v1

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetSystemPackages:Z

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lcom/android/commands/monkey/MonkeyUtils;->getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->isPackageInvalid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 104
    return v1

    .line 106
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTargetPermission(Ljava/lang/String;Landroid/content/pm/PermissionInfo;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pi"    # Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermManager:Landroid/permission/IPermissionManager;

    iget-object v1, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 112
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 110
    const-string v3, "default:0"

    invoke-interface {v0, p1, v1, v3, v2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "flags":I
    const/16 v1, 0x14

    .line 115
    .local v1, "fixedPermFlags":I
    iget-object v2, p2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    and-int v2, v0, v1

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 117
    invoke-static {v2}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->isModernPermissionGroup(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 115
    :goto_0
    return v3
.end method


# virtual methods
.method public dump()V
    .locals 9

    .line 159
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v1, "// Targeted packages and permissions:"

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    sget-object v2, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "//  + Using %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 163
    .local v3, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 164
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 165
    const-string v5, "android.permission."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 166
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 169
    :cond_0
    iget-object v5, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 170
    .local v5, "group":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 171
    const-string v6, "android.permission-group."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 172
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 175
    :cond_1
    sget-object v6, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v7, "//    Permission: %s [%s]"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 176
    .end local v3    # "pi":Landroid/content/pm/PermissionInfo;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "group":Ljava/lang/String;
    goto :goto_1

    .line 177
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/PermissionInfo;>;>;"
    :cond_2
    goto :goto_0

    .line 178
    :cond_3
    return-void
.end method

.method public generateRandomPermissionEvent(Ljava/util/Random;)Lcom/android/commands/monkey/MonkeyPermissionEvent;
    .locals 4
    .param p1, "random"    # Ljava/util/Random;

    .line 181
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetedPackages:Ljava/util/List;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetedPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 183
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    new-instance v2, Lcom/android/commands/monkey/MonkeyPermissionEvent;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    invoke-direct {v2, v0, v3}, Lcom/android/commands/monkey/MonkeyPermissionEvent;-><init>(Ljava/lang/String;Landroid/content/pm/PermissionInfo;)V

    return-object v2
.end method

.method public populatePermissionsMapping()Z
    .locals 12

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    .line 123
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPm:Landroid/content/pm/IPackageManager;

    .line 124
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 123
    const-wide/16 v3, 0x1000

    invoke-interface {v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "pkgInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 126
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 127
    .local v4, "info":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->shouldTargetPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    goto :goto_0

    .line 130
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v5, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x16

    if-gt v6, v7, :cond_1

    .line 133
    goto :goto_0

    .line 135
    :cond_1
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v6, :cond_2

    .line 136
    goto :goto_0

    .line 138
    :cond_2
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v6

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 139
    .local v9, "perm":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermManager:Landroid/permission/IPermissionManager;

    const-string v11, "shell"

    invoke-interface {v10, v9, v11, v0}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v10

    .line 140
    .local v10, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v10, :cond_3

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11, v10}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->shouldTargetPermission(Ljava/lang/String;Landroid/content/pm/PermissionInfo;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 141
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v9    # "perm":Ljava/lang/String;
    .end local v10    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 144
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 145
    iget-object v6, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_5
    goto :goto_0

    .line 151
    .end local v1    # "pkgInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6
    nop

    .line 152
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mPermissionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetedPackages:Ljava/util/List;

    .line 155
    :cond_7
    const/4 v0, 0x1

    return v0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v3, "** Failed talking with package manager!"

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 150
    return v0
.end method

.method public setTargetSystemPackages(Z)V
    .locals 0
    .param p1, "targetSystemPackages"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyPermissionUtil;->mTargetSystemPackages:Z

    .line 87
    return-void
.end method
