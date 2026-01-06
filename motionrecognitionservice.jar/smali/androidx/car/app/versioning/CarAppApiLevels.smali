.class public final Landroidx/car/app/versioning/CarAppApiLevels;
.super Ljava/lang/Object;
.source "CarAppApiLevels.java"


# static fields
.field private static final CAR_API_LEVEL_FILE:Ljava/lang/String; = "car-app-api.level"

.field public static final LEVEL_1:I = 0x1

.field public static final LEVEL_2:I = 0x2

.field public static final LEVEL_3:I = 0x3

.field public static final LEVEL_4:I = 0x4

.field public static final LEVEL_5:I = 0x5

.field public static final LEVEL_6:I = 0x6

.field public static final LEVEL_7:I = 0x7

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public static getLatest()I
    .locals 9

    .line 126
    const-class v0, Landroidx/car/app/versioning/CarAppApiLevels;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 127
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string v1, "car-app-api.level"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 129
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 135
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 136
    .local v1, "streamReader":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "line":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 141
    .local v5, "apiLevel":I
    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    const/4 v6, 0x7

    if-gt v5, v6, :cond_0

    .line 144
    return v5

    .line 142
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized Car API level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "streamReader":Ljava/io/InputStreamReader;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "apiLevel":I
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to read Car API level file"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Car API level file %s not found"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getOldest()I
    .locals 1

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public static isValid(I)Z
    .locals 1
    .param p0, "carApiLevel"    # I

    .line 115
    invoke-static {}, Landroidx/car/app/versioning/CarAppApiLevels;->getOldest()I

    move-result v0

    if-lt p0, v0, :cond_0

    invoke-static {}, Landroidx/car/app/versioning/CarAppApiLevels;->getLatest()I

    move-result v0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
