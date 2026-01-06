.class public Landroid/test/ClassPathPackageInfoSource;
.super Ljava/lang/Object;
.source "ClassPathPackageInfoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static apkPaths:[Ljava/lang/String;

.field private static classPathSource:Landroid/test/ClassPathPackageInfoSource;


# instance fields
.field private final cache:Landroid/test/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/test/SimpleCache<",
            "Ljava/lang/String;",
            "Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final classPath:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcache(Landroid/test/ClassPathPackageInfoSource;)Landroid/test/SimpleCache;
    .locals 0

    iget-object p0, p0, Landroid/test/ClassPathPackageInfoSource;->cache:Landroid/test/SimpleCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreatePackageInfo(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;)Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;
    .locals 0

    invoke-direct {p0, p1}, Landroid/test/ClassPathPackageInfoSource;->createPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    nop

    .line 40
    const-class v0, Landroid/test/ClassPathPackageInfoSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/test/ClassPathPackageInfoSource;->CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/test/ClassPathPackageInfoSource$1;

    invoke-direct {v0, p0}, Landroid/test/ClassPathPackageInfoSource$1;-><init>(Landroid/test/ClassPathPackageInfoSource;)V

    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->cache:Landroid/test/SimpleCache;

    .line 60
    iput-object p1, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    .line 61
    invoke-static {}, Landroid/test/ClassPathPackageInfoSource;->getClassPath()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->classPath:[Ljava/lang/String;

    .line 62
    return-void
.end method

.method private createPackageInfo(Ljava/lang/String;)Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v4, v0

    .line 82
    .local v4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v7, v0

    .line 83
    .local v7, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v5, "topLevelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, v7, v4}, Landroid/test/ClassPathPackageInfoSource;->findClasses(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 85
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, "className":Ljava/lang/String;
    const-string v0, ".R"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".Manifest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    goto :goto_0

    .line 93
    :cond_1
    nop

    .line 94
    :try_start_0
    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->classLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/test/ClassPathPackageInfoSource;->CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 93
    :goto_1
    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot load class. Make sure it is in your apk. Class name: \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'. Message: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    const-string v6, "ClassPathPackageInfoSource"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "className":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 103
    :cond_3
    new-instance v1, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;-><init>(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Landroid/test/ClassPathPackageInfoSource-IA;)V

    return-object v1
.end method

.method private findClasses(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p2, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->classPath:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 115
    .local v4, "entryName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v5, "classPathEntry":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    :try_start_0
    const-string v6, ".apk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    invoke-direct {p0, v4, p1, p2, p3}, Landroid/test/ClassPathPackageInfoSource;->findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_2

    .line 125
    :cond_0
    sget-object v6, Landroid/test/ClassPathPackageInfoSource;->apkPaths:[Ljava/lang/String;

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 126
    .local v9, "apkPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v10, "file":Ljava/io/File;
    invoke-direct {p0, v10, p1, p2, p3}, Landroid/test/ClassPathPackageInfoSource;->scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v9    # "apkPath":Ljava/lang/String;
    .end local v10    # "file":Ljava/io/File;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 133
    :cond_1
    :goto_2
    goto :goto_3

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read classpath entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v5    # "classPathEntry":Ljava/io/File;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_3
    return-void
.end method

.method private findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    .local p3, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 162
    .local v0, "dexFile":Ldalvik/system/DexFile;
    :try_start_0
    new-instance v1, Ldalvik/system/DexFile;

    invoke-direct {v1, p1}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 163
    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 164
    .local v1, "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    move-object v3, p2

    .line 169
    .local v3, "subPackageName":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 170
    .local v4, "lastPackageSeparator":I
    if-lez v4, :cond_0

    .line 171
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 173
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 174
    invoke-interface {p4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_1
    invoke-static {v2}, Landroid/test/ClassPathPackageInfoSource;->isToplevelClass(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "subPackageName":Ljava/lang/String;
    .end local v4    # "lastPackageSeparator":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 186
    .end local v1    # "apkClassNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v1

    .line 190
    throw v1

    .line 180
    :catch_0
    move-exception v1

    goto :goto_2

    .line 191
    :goto_3
    return-void
.end method

.method public static forClassPath(Ljava/lang/ClassLoader;)Landroid/test/ClassPathPackageInfoSource;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 69
    sget-object v0, Landroid/test/ClassPathPackageInfoSource;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/test/ClassPathPackageInfoSource;

    invoke-direct {v0, p0}, Landroid/test/ClassPathPackageInfoSource;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v0, Landroid/test/ClassPathPackageInfoSource;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    .line 72
    :cond_0
    sget-object v0, Landroid/test/ClassPathPackageInfoSource;->classPathSource:Landroid/test/ClassPathPackageInfoSource;

    return-object v0
.end method

.method private static getClassPath()[Ljava/lang/String;
    .locals 3

    .line 205
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "classPath":Ljava/lang/String;
    const-string v1, "path.separator"

    const-string v2, ":"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "separator":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static isToplevelClass(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .line 197
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .param p1, "source"    # Ljava/io/File;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    .local p3, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "subpackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/test/ClassPathPackageInfoSource;->findClassesInApk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 144
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 145
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 146
    .local v3, "file":Ljava/io/File;
    invoke-direct {p0, v3, p2, p3, p4}, Landroid/test/ClassPathPackageInfoSource;->scanForApkFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 145
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "files":[Ljava/io/File;
    :cond_1
    :goto_1
    return-void
.end method

.method static setApkPaths([Ljava/lang/String;)V
    .locals 0
    .param p0, "apkPaths"    # [Ljava/lang/String;

    .line 65
    sput-object p0, Landroid/test/ClassPathPackageInfoSource;->apkPaths:[Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getTopLevelClassesRecursive(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource;->cache:Landroid/test/SimpleCache;

    invoke-virtual {v0, p1}, Landroid/test/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;

    .line 77
    .local v0, "packageInfo":Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;->-$$Nest$mgetTopLevelClassesRecursive(Landroid/test/ClassPathPackageInfoSource$ClassPathPackageInfo;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
