.class public final enum Lcom/samsung/android/hardware/context/util/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/context/util/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum BOOLEAN:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum BOOLEAN_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum BYTE:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum BYTE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum DOUBLE:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum DOUBLE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum FLOAT:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum FLOAT_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum INT:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum INT_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum LONG:Lcom/samsung/android/hardware/context/util/DataType;

.field public static final enum LONG_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;


# instance fields
.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/context/util/DataType;
    .locals 12

    .line 30
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->BOOLEAN:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v1, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v2, Lcom/samsung/android/hardware/context/util/DataType;->LONG:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v3, Lcom/samsung/android/hardware/context/util/DataType;->FLOAT:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v5, Lcom/samsung/android/hardware/context/util/DataType;->BYTE:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v6, Lcom/samsung/android/hardware/context/util/DataType;->BOOLEAN_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v7, Lcom/samsung/android/hardware/context/util/DataType;->INT_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v8, Lcom/samsung/android/hardware/context/util/DataType;->LONG_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v9, Lcom/samsung/android/hardware/context/util/DataType;->FLOAT_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v10, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    sget-object v11, Lcom/samsung/android/hardware/context/util/DataType;->BYTE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    filled-new-array/range {v0 .. v11}, [Lcom/samsung/android/hardware/context/util/DataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->BOOLEAN:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const-string v1, "INT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const-string v1, "LONG"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->LONG:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const-string v1, "FLOAT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->FLOAT:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const-string v1, "DOUBLE"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const-string v1, "BYTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->BYTE:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const-string v1, "BOOLEAN_ARRAY"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->BOOLEAN_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const/4 v1, 0x7

    const/16 v2, 0xc

    const-string v4, "INT_ARRAY"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->INT_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    .line 32
    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const/16 v1, 0x8

    const/16 v2, 0xd

    const-string v4, "LONG_ARRAY"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->LONG_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const/16 v1, 0x9

    const/16 v2, 0xe

    const-string v4, "FLOAT_ARRAY"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->FLOAT_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const/16 v1, 0xa

    const/16 v2, 0xf

    const-string v4, "DOUBLE_ARRAY"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    new-instance v0, Lcom/samsung/android/hardware/context/util/DataType;

    const-string v1, "BYTE_ARRAY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/hardware/context/util/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->BYTE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    .line 30
    invoke-static {}, Lcom/samsung/android/hardware/context/util/DataType;->$values()[Lcom/samsung/android/hardware/context/util/DataType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/context/util/DataType;->$VALUES:[Lcom/samsung/android/hardware/context/util/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/samsung/android/hardware/context/util/DataType;->mValue:I

    .line 38
    return-void
.end method

.method static getData(Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/hardware/context/util/DataType;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dataType"    # Lcom/samsung/android/hardware/context/util/DataType;

    .line 72
    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/samsung/android/hardware/context/util/DataType;->ordinal()I

    move-result v1

    const-string v2, ", "

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    .line 150
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 151
    .local v1, "byteArray":[B
    if-eqz v1, :cond_d

    .line 152
    array-length v3, v1

    .line 153
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 154
    aget-byte v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_1

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_2
    goto/16 :goto_6

    .line 139
    .end local v1    # "byteArray":[B
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 140
    .local v1, "doubleArray":[D
    if-eqz v1, :cond_d

    .line 141
    array-length v3, v1

    .line 142
    .restart local v3    # "size":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 143
    aget-wide v5, v1, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_3

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 147
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_4
    goto/16 :goto_6

    .line 128
    .end local v1    # "doubleArray":[D
    :pswitch_2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 129
    .local v1, "floatArray":[F
    if-eqz v1, :cond_d

    .line 130
    array-length v3, v1

    .line 131
    .restart local v3    # "size":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 132
    aget v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_5

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 136
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_6
    goto/16 :goto_6

    .line 117
    .end local v1    # "floatArray":[F
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 118
    .local v1, "longArray":[J
    if-eqz v1, :cond_d

    .line 119
    array-length v3, v1

    .line 120
    .restart local v3    # "size":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_8

    .line 121
    aget-wide v5, v1, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_7

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 125
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_8
    goto :goto_6

    .line 106
    .end local v1    # "longArray":[J
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 107
    .local v1, "intArray":[I
    if-eqz v1, :cond_d

    .line 108
    array-length v3, v1

    .line 109
    .restart local v3    # "size":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v3, :cond_a

    .line 110
    aget v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_9

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 114
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_a
    goto :goto_6

    .line 95
    .end local v1    # "intArray":[I
    :pswitch_5
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 96
    .local v1, "booleanArray":[Z
    if-eqz v1, :cond_d

    .line 97
    array-length v3, v1

    .line 98
    .restart local v3    # "size":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v3, :cond_c

    .line 99
    aget-boolean v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_b

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 103
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_c
    goto :goto_6

    .line 92
    .end local v1    # "booleanArray":[Z
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    goto :goto_6

    .line 89
    :pswitch_7
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 90
    goto :goto_6

    .line 86
    :pswitch_8
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    goto :goto_6

    .line 83
    :pswitch_9
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    goto :goto_6

    .line 80
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    goto :goto_6

    .line 77
    :pswitch_b
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    nop

    .line 163
    :cond_d
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 72
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_e
    :goto_7
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/samsung/android/hardware/context/util/DataType;
    .locals 1
    .param p0, "value"    # I

    .line 41
    packed-switch p0, :pswitch_data_0

    .line 67
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 65
    :pswitch_1
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->BYTE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 63
    :pswitch_2
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 61
    :pswitch_3
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->FLOAT_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 59
    :pswitch_4
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->LONG_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 57
    :pswitch_5
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->INT_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 55
    :pswitch_6
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->BOOLEAN_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 53
    :pswitch_7
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->BYTE:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 51
    :pswitch_8
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 49
    :pswitch_9
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->FLOAT:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 47
    :pswitch_a
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->LONG:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 45
    :pswitch_b
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    .line 43
    :pswitch_c
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->BOOLEAN:Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/context/util/DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    const-class v0, Lcom/samsung/android/hardware/context/util/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/context/util/DataType;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/hardware/context/util/DataType;->$VALUES:[Lcom/samsung/android/hardware/context/util/DataType;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/context/util/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/context/util/DataType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/samsung/android/hardware/context/util/DataType;->mValue:I

    return v0
.end method
