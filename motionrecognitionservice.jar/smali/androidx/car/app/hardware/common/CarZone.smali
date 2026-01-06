.class public final Landroidx/car/app/hardware/common/CarZone;
.super Ljava/lang/Object;
.source "CarZone.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/common/CarZone$Builder;,
        Landroidx/car/app/hardware/common/CarZone$CarZoneColumn;,
        Landroidx/car/app/hardware/common/CarZone$CarZoneRow;
    }
.end annotation


# static fields
.field public static final CAR_ZONE_COLUMN_ALL:I = 0x10

.field public static final CAR_ZONE_COLUMN_CENTER:I = 0x30

.field public static final CAR_ZONE_COLUMN_DRIVER:I = 0x50

.field public static final CAR_ZONE_COLUMN_LEFT:I = 0x20

.field public static final CAR_ZONE_COLUMN_PASSENGER:I = 0x60

.field public static final CAR_ZONE_COLUMN_RIGHT:I = 0x40

.field public static final CAR_ZONE_GLOBAL:Landroidx/car/app/hardware/common/CarZone;

.field public static final CAR_ZONE_ROW_ALL:I = 0x0

.field public static final CAR_ZONE_ROW_EXCLUDE_FIRST:I = 0x4

.field public static final CAR_ZONE_ROW_FIRST:I = 0x1

.field public static final CAR_ZONE_ROW_SECOND:I = 0x2

.field public static final CAR_ZONE_ROW_THIRD:I = 0x3


# instance fields
.field private final mColumn:I

.field private final mRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Landroidx/car/app/hardware/common/CarZone$Builder;

    invoke-direct {v0}, Landroidx/car/app/hardware/common/CarZone$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/car/app/hardware/common/CarZone$Builder;->build()Landroidx/car/app/hardware/common/CarZone;

    move-result-object v0

    sput-object v0, Landroidx/car/app/hardware/common/CarZone;->CAR_ZONE_GLOBAL:Landroidx/car/app/hardware/common/CarZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/hardware/common/CarZone;->mRow:I

    .line 230
    iput v0, p0, Landroidx/car/app/hardware/common/CarZone;->mColumn:I

    .line 231
    return-void
.end method

.method constructor <init>(Landroidx/car/app/hardware/common/CarZone$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/car/app/hardware/common/CarZone$Builder;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iget v0, p1, Landroidx/car/app/hardware/common/CarZone$Builder;->mRow:I

    iput v0, p0, Landroidx/car/app/hardware/common/CarZone;->mRow:I

    .line 157
    iget v0, p1, Landroidx/car/app/hardware/common/CarZone$Builder;->mColumn:I

    iput v0, p0, Landroidx/car/app/hardware/common/CarZone;->mColumn:I

    .line 158
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 217
    return v0

    .line 219
    :cond_0
    instance-of v1, p1, Landroidx/car/app/hardware/common/CarZone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 220
    return v2

    .line 222
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/hardware/common/CarZone;

    .line 223
    .local v1, "otherZone":Landroidx/car/app/hardware/common/CarZone;
    iget v3, p0, Landroidx/car/app/hardware/common/CarZone;->mColumn:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/car/app/hardware/common/CarZone;->getColumn()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/car/app/hardware/common/CarZone;->mRow:I

    .line 224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/car/app/hardware/common/CarZone;->getRow()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 223
    :goto_0
    return v0
.end method

.method public getColumn()I
    .locals 1

    .line 151
    iget v0, p0, Landroidx/car/app/hardware/common/CarZone;->mColumn:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 146
    iget v0, p0, Landroidx/car/app/hardware/common/CarZone;->mRow:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 211
    iget v0, p0, Landroidx/car/app/hardware/common/CarZone;->mRow:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/hardware/common/CarZone;->mColumn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 164
    iget v0, p0, Landroidx/car/app/hardware/common/CarZone;->mRow:I

    packed-switch v0, :pswitch_data_0

    .line 181
    const-string v0, "UNKNOWN"

    .local v0, "rowName":Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v0    # "rowName":Ljava/lang/String;
    :pswitch_0
    const-string v0, "CAR_ZONE_ROW_EXCLUDE_FIRST"

    .line 179
    .restart local v0    # "rowName":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0    # "rowName":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CAR_ZONE_ROW_THIRD"

    .line 176
    .restart local v0    # "rowName":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0    # "rowName":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CAR_ZONE_ROW_SECOND"

    .line 173
    .restart local v0    # "rowName":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0    # "rowName":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CAR_ZONE_ROW_FIRST"

    .line 170
    .restart local v0    # "rowName":Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v0    # "rowName":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CAR_ZONE_ROW_ALL"

    .line 167
    .restart local v0    # "rowName":Ljava/lang/String;
    nop

    .line 184
    :goto_0
    iget v1, p0, Landroidx/car/app/hardware/common/CarZone;->mColumn:I

    sparse-switch v1, :sswitch_data_0

    .line 204
    const-string v1, "UNKNOWN"

    .local v1, "columnName":Ljava/lang/String;
    goto :goto_1

    .line 201
    .end local v1    # "columnName":Ljava/lang/String;
    :sswitch_0
    const-string v1, "CAR_ZONE_COLUMN_PASSENGER"

    .line 202
    .restart local v1    # "columnName":Ljava/lang/String;
    goto :goto_1

    .line 198
    .end local v1    # "columnName":Ljava/lang/String;
    :sswitch_1
    const-string v1, "CAR_ZONE_COLUMN_DRIVER"

    .line 199
    .restart local v1    # "columnName":Ljava/lang/String;
    goto :goto_1

    .line 195
    .end local v1    # "columnName":Ljava/lang/String;
    :sswitch_2
    const-string v1, "CAR_ZONE_COLUMN_RIGHT"

    .line 196
    .restart local v1    # "columnName":Ljava/lang/String;
    goto :goto_1

    .line 192
    .end local v1    # "columnName":Ljava/lang/String;
    :sswitch_3
    const-string v1, "CAR_ZONE_COLUMN_CENTER"

    .line 193
    .restart local v1    # "columnName":Ljava/lang/String;
    goto :goto_1

    .line 189
    .end local v1    # "columnName":Ljava/lang/String;
    :sswitch_4
    const-string v1, "CAR_ZONE_COLUMN_LEFT"

    .line 190
    .restart local v1    # "columnName":Ljava/lang/String;
    goto :goto_1

    .line 186
    .end local v1    # "columnName":Ljava/lang/String;
    :sswitch_5
    const-string v1, "CAR_ZONE_COLUMN_ALL"

    .line 187
    .restart local v1    # "columnName":Ljava/lang/String;
    nop

    .line 206
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CarZone row value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", column value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_5
        0x20 -> :sswitch_4
        0x30 -> :sswitch_3
        0x40 -> :sswitch_2
        0x50 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method
