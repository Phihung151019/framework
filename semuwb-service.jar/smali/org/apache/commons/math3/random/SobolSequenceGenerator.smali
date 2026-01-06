.class public Lorg/apache/commons/math3/random/SobolSequenceGenerator;
.super Ljava/lang/Object;
.source "SobolSequenceGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# static fields
.field private static final BITS:I = 0x34

.field private static final FILE_CHARSET:Ljava/lang/String; = "US-ASCII"

.field private static final MAX_DIMENSION:I = 0x3e8

.field private static final RESOURCE_NAME:Ljava/lang/String; = "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000"

.field private static final SCALE:D


# instance fields
.field private count:I

.field private final dimension:I

.field private final direction:[[J

.field private final x:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/16 v2, 0x34

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->SCALE:D

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "dimension"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 92
    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-lt p1, v2, :cond_1

    if-gt p1, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 98
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 102
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    .line 105
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/16 v4, 0x35

    aput v4, v3, v2

    aput p1, v3, v0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    .line 106
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    .line 109
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->initFromStream(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/commons/math3/exception/MathParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 122
    nop

    .line 123
    :goto_0
    return-void

    .line 117
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 113
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Lorg/apache/commons/math3/exception/MathParseException;
    :try_start_2
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    .end local v1    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/commons/math3/random/SobolSequenceGenerator;
    .end local p1    # "dimension":I
    throw v2

    .line 110
    .end local v0    # "e":Lorg/apache/commons/math3/exception/MathParseException;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/commons/math3/random/SobolSequenceGenerator;
    .restart local p1    # "dimension":I
    :catch_2
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v2}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    .end local v1    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lorg/apache/commons/math3/random/SobolSequenceGenerator;
    .end local p1    # "dimension":I
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lorg/apache/commons/math3/random/SobolSequenceGenerator;
    .restart local p1    # "dimension":I
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 121
    goto :goto_2

    .line 119
    :catch_3
    move-exception v2

    .line 121
    :goto_2
    throw v0

    .line 99
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 93
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 5
    .param p1, "dimension"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/MathParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 159
    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    .line 163
    iput p1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    .line 166
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v3, 0x35

    aput v3, v2, v1

    aput p1, v2, v0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    .line 167
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    .line 170
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->initFromStream(Ljava/io/InputStream;)I

    move-result v0

    .line 171
    .local v0, "lastDimension":I
    if-lt v0, p1, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v2

    .line 160
    .end local v0    # "lastDimension":I
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method private initDirectionVector(II[I)V
    .locals 10
    .param p1, "d"    # I
    .param p2, "a"    # I
    .param p3, "m"    # [I

    .line 244
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 245
    .local v0, "s":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 246
    iget-object v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v2, v2, p1

    aget v3, p3, v1

    int-to-long v3, v3

    rsub-int/lit8 v5, v1, 0x34

    shl-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .restart local v1    # "i":I
    :goto_1
    const/16 v2, 0x34

    if-gt v1, v2, :cond_2

    .line 249
    iget-object v2, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v2, v2, p1

    iget-object v3, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v3, v3, p1

    sub-int v4, v1, v0

    aget-wide v3, v3, v4

    iget-object v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v5, v5, p1

    sub-int v6, v1, v0

    aget-wide v5, v5, v6

    shr-long/2addr v5, v0

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 250
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-gt v2, v3, :cond_1

    .line 251
    iget-object v3, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v3, v3, p1

    aget-wide v4, v3, v1

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v2

    shr-int v6, p2, v6

    and-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    iget-object v8, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v8, v8, p1

    sub-int v9, v1, v2

    aget-wide v8, v8, v9

    mul-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 248
    .end local v2    # "k":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private initFromStream(Ljava/io/InputStream;)I
    .locals 12
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x34

    if-gt v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    const/4 v2, 0x0

    aget-object v1, v1, v2

    rsub-int/lit8 v2, v0, 0x34

    const-wide/16 v3, 0x1

    shl-long v2, v3, v2

    aput-wide v2, v1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "i":I
    :cond_0
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 195
    .local v0, "charset":Ljava/nio/charset/Charset;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, -0x1

    .line 200
    .local v2, "dim":I
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 202
    const/4 v3, 0x2

    .line 203
    .local v3, "lineNumber":I
    const/4 v4, 0x1

    .line 204
    .local v4, "index":I
    const/4 v5, 0x0

    .line 205
    .local v5, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_4

    .line 206
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .local v6, "st":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    .line 209
    const/4 v7, 0x2

    if-lt v2, v7, :cond_2

    iget v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    if-gt v2, v7, :cond_2

    .line 210
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 211
    .local v7, "s":I
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 212
    .local v8, "a":I
    add-int/lit8 v9, v7, 0x1

    new-array v9, v9, [I

    .line 213
    .local v9, "m":[I
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_2
    if-gt v10, v7, :cond_1

    .line 214
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v10
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 216
    .end local v10    # "i":I
    :cond_1
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "index":I
    .local v10, "index":I
    :try_start_2
    invoke-direct {p0, v4, v8, v9}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->initDirectionVector(II[I)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v10

    goto :goto_3

    .line 224
    .end local v7    # "s":I
    .end local v8    # "a":I
    .end local v9    # "m":[I
    :catch_0
    move-exception v7

    move v4, v10

    goto :goto_4

    .line 222
    :catch_1
    move-exception v7

    move v4, v10

    goto :goto_5

    .line 219
    .end local v10    # "index":I
    .restart local v4    # "index":I
    :cond_2
    :goto_3
    :try_start_3
    iget v7, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-le v2, v7, :cond_3

    .line 220
    nop

    .line 230
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return v2

    .line 226
    :cond_3
    nop

    .line 227
    nop

    .end local v6    # "st":Ljava/util/StringTokenizer;
    add-int/lit8 v3, v3, 0x1

    .line 228
    goto :goto_1

    .line 224
    .restart local v6    # "st":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v7

    .line 225
    .local v7, "e":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_4
    new-instance v8, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-direct {v8, v5, v3}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;I)V

    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "dim":I
    .end local p0    # "this":Lorg/apache/commons/math3/random/SobolSequenceGenerator;
    .end local p1    # "is":Ljava/io/InputStream;
    throw v8

    .line 222
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "charset":Ljava/nio/charset/Charset;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "dim":I
    .restart local p0    # "this":Lorg/apache/commons/math3/random/SobolSequenceGenerator;
    .restart local p1    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    .line 223
    .local v7, "e":Ljava/util/NoSuchElementException;
    :goto_5
    new-instance v8, Lorg/apache/commons/math3/exception/MathParseException;

    invoke-direct {v8, v5, v3}, Lorg/apache/commons/math3/exception/MathParseException;-><init>(Ljava/lang/String;I)V

    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "dim":I
    .end local p0    # "this":Lorg/apache/commons/math3/random/SobolSequenceGenerator;
    .end local p1    # "is":Ljava/io/InputStream;
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 230
    .end local v3    # "lineNumber":I
    .end local v4    # "index":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "e":Ljava/util/NoSuchElementException;
    .restart local v0    # "charset":Ljava/nio/charset/Charset;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "dim":I
    .restart local p0    # "this":Lorg/apache/commons/math3/random/SobolSequenceGenerator;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 231
    nop

    .line 233
    return v2

    .line 230
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v3
.end method


# virtual methods
.method public getNextIndex()I
    .locals 1

    .line 322
    iget v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    return v0
.end method

.method public nextVector()[D
    .locals 10

    .line 258
    iget v0, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    new-array v0, v0, [D

    .line 259
    .local v0, "v":[D
    iget v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 260
    iget v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 261
    return-object v0

    .line 265
    :cond_0
    const/4 v1, 0x1

    .line 266
    .local v1, "c":I
    iget v3, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    sub-int/2addr v3, v2

    .line 267
    .local v3, "value":I
    :goto_0
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v2, :cond_1

    .line 268
    shr-int/lit8 v3, v3, 0x1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    if-ge v4, v5, :cond_2

    .line 273
    iget-object v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    aget-wide v6, v5, v4

    iget-object v8, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v8, v8, v4

    aget-wide v8, v8, v1

    xor-long/2addr v6, v8

    aput-wide v6, v5, v4

    .line 274
    iget-object v5, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    aget-wide v5, v5, v4

    long-to-double v5, v5

    sget-wide v7, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->SCALE:D

    div-double/2addr v5, v7

    aput-wide v5, v0, v4

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    .end local v4    # "i":I
    :cond_2
    iget v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 277
    return-object v0
.end method

.method public skipTo(I)[D
    .locals 17
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 290
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 292
    iget-object v4, v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_3

    .line 294
    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 295
    .local v4, "i":I
    shr-int/lit8 v5, v4, 0x1

    xor-int/2addr v5, v4

    int-to-long v5, v5

    .line 296
    .local v5, "grayCode":J
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    iget v8, v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->dimension:I

    if-ge v7, v8, :cond_3

    .line 297
    const-wide/16 v8, 0x0

    .line 298
    .local v8, "result":J
    const/4 v10, 0x1

    .local v10, "k":I
    :goto_1
    const/16 v11, 0x34

    if-gt v10, v11, :cond_2

    .line 299
    add-int/lit8 v11, v10, -0x1

    shr-long v11, v5, v11

    .line 300
    .local v11, "shift":J
    cmp-long v13, v11, v2

    if-nez v13, :cond_1

    .line 302
    goto :goto_2

    .line 305
    :cond_1
    const-wide/16 v13, 0x1

    and-long/2addr v13, v11

    .line 306
    .local v13, "ik":J
    iget-object v15, v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->direction:[[J

    aget-object v15, v15, v7

    aget-wide v15, v15, v10

    mul-long/2addr v15, v13

    xor-long/2addr v8, v15

    .line 298
    .end local v11    # "shift":J
    .end local v13    # "ik":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 308
    .end local v10    # "k":I
    :cond_2
    :goto_2
    iget-object v10, v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->x:[J

    aput-wide v8, v10, v7

    .line 296
    .end local v8    # "result":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 311
    .end local v4    # "i":I
    .end local v5    # "grayCode":J
    .end local v7    # "j":I
    :cond_3
    :goto_3
    iput v1, v0, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->count:I

    .line 312
    invoke-virtual {v0}, Lorg/apache/commons/math3/random/SobolSequenceGenerator;->nextVector()[D

    move-result-object v2

    return-object v2
.end method
