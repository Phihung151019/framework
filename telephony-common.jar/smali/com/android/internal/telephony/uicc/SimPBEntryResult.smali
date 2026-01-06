.class public Lcom/android/internal/telephony/uicc/SimPBEntryResult;
.super Ljava/lang/Object;
.source "SimPBEntryResult.java"


# static fields
.field public static final blacklist INDEX_ANR:I = 0x0

.field public static final blacklist INDEX_ANRA:I = 0x1

.field public static final blacklist INDEX_ANRB:I = 0x2

.field public static final blacklist INDEX_ANRC:I = 0x3

.field public static final blacklist INDEX_EMAIL:I = 0x2

.field public static final blacklist INDEX_NAME:I = 0x0

.field public static final blacklist INDEX_NUMBER:I = 0x0

.field public static final blacklist INDEX_SNE:I = 0x1

.field public static final blacklist NUM_OF_ALPHA:I = 0x3

.field public static final blacklist NUM_OF_ANR:I = 0x4

.field public static final blacklist NUM_OF_NUMBER:I = 0x5


# instance fields
.field public blacklist additionalNumbers:[Ljava/lang/String;

.field public blacklist alphaTags:[Ljava/lang/String;

.field public blacklist dataTypeAddtionalNumbers:[I

.field public blacklist dataTypeAlphas:[I

.field public blacklist dataTypeNumber:I

.field public blacklist lengthAddtionalNumbers:[I

.field public blacklist lengthAlphas:[I

.field public blacklist lengthNumber:I

.field public blacklist nextIndex:I

.field public blacklist number:Ljava/lang/String;

.field public blacklist recordIndex:I


# direct methods
.method public constructor blacklist <init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V
    .locals 11

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 44
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthAlphas:[I

    .line 45
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeAlphas:[I

    .line 46
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 47
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->additionalNumbers:[Ljava/lang/String;

    .line 48
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthAddtionalNumbers:[I

    .line 49
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeAddtionalNumbers:[I

    const/4 v2, 0x0

    move v3, v2

    .line 50
    :goto_0
    const-string v4, ""

    if-ge v3, v0, :cond_4

    .line 51
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthAlphas:[I

    aget v6, p1, v3

    aput v6, v5, v3

    .line 52
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeAlphas:[I

    aget v6, p2, v3

    aput v6, v5, v3

    .line 53
    aget-object v5, p3, v3

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 54
    aget v6, p2, v3

    const-string v7, "Not supported encoding type"

    const-string v8, "GSM"

    const/4 v9, 0x1

    if-eq v6, v9, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    if-eq v6, v0, :cond_1

    if-eq v6, v1, :cond_0

    .line 77
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aput-object v4, v5, v3

    .line 78
    const-string v4, "SimPBEntryResult: default Unknown type"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aput-object v4, v5, v3

    .line 74
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    aget v9, p1, v3

    const-string v10, "UTF-16"

    invoke-direct {v7, v5, v2, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v7, v6, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aput-object v4, v5, v3

    .line 69
    const-string v4, "SimPBEntryResult - implausible UnsupportedEncodingException"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aget v6, p1, v3

    invoke-static {v5, v2, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_1

    .line 56
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aput-object v4, v5, v3

    .line 57
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 p1, 0x5

    if-ge v2, p1, :cond_7

    .line 84
    aget p1, p4, v2

    if-eqz p1, :cond_5

    aget-object p2, p6, v2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move-object p2, v4

    :goto_3
    if-nez v2, :cond_6

    .line 87
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->number:Ljava/lang/String;

    .line 88
    iput p1, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthNumber:I

    .line 89
    aget p1, p5, v2

    iput p1, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeNumber:I

    goto :goto_4

    .line 91
    :cond_6
    iget-object p3, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->additionalNumbers:[Ljava/lang/String;

    add-int/lit8 v0, v2, -0x1

    aput-object p2, p3, v0

    .line 92
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->lengthAddtionalNumbers:[I

    aput p1, p2, v0

    .line 93
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->dataTypeAddtionalNumbers:[I

    aget p2, p5, v2

    aput p2, p1, v0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move/from16 p1, p7

    .line 96
    iput p1, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->recordIndex:I

    move/from16 p1, p8

    .line 97
    iput p1, p0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->nextIndex:I

    return-void
.end method
