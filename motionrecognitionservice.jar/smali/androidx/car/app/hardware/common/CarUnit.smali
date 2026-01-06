.class public final Landroidx/car/app/hardware/common/CarUnit;
.super Ljava/lang/Object;
.source "CarUnit.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/hardware/common/CarUnit$CarSpeedUnit;,
        Landroidx/car/app/hardware/common/CarUnit$CarVolumeUnit;,
        Landroidx/car/app/hardware/common/CarUnit$CarDistanceUnit;
    }
.end annotation


# static fields
.field public static final IMPERIAL_GALLON:I = 0xcc

.field public static final KILOMETER:I = 0x3

.field public static final KILOMETERS_PER_HOUR:I = 0x66

.field public static final LITER:I = 0xca

.field public static final METER:I = 0x2

.field public static final METERS_PER_SEC:I = 0x65

.field public static final MILE:I = 0x4

.field public static final MILES_PER_HOUR:I = 0x67

.field public static final MILLILITER:I = 0xc9

.field public static final MILLIMETER:I = 0x1

.field public static final US_GALLON:I = 0xcb


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "unit"    # I

    .line 146
    sparse-switch p0, :sswitch_data_0

    .line 170
    const-string v0, "UNKNOWN"

    return-object v0

    .line 162
    :sswitch_0
    const-string v0, "IMPERIAL_GALLON"

    return-object v0

    .line 160
    :sswitch_1
    const-string v0, "US_GALLON "

    return-object v0

    .line 158
    :sswitch_2
    const-string v0, "LITER"

    return-object v0

    .line 156
    :sswitch_3
    const-string v0, "MILLILITER"

    return-object v0

    .line 168
    :sswitch_4
    const-string v0, "MILES_PER_HOUR "

    return-object v0

    .line 166
    :sswitch_5
    const-string v0, "KILOMETERS_PER_HOUR"

    return-object v0

    .line 164
    :sswitch_6
    const-string v0, "METERS_PER_SEC"

    return-object v0

    .line 154
    :sswitch_7
    const-string v0, "MILE"

    return-object v0

    .line 152
    :sswitch_8
    const-string v0, "KILOMETER"

    return-object v0

    .line 150
    :sswitch_9
    const-string v0, "METER"

    return-object v0

    .line 148
    :sswitch_a
    const-string v0, "MILLIMETER"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x65 -> :sswitch_6
        0x66 -> :sswitch_5
        0x67 -> :sswitch_4
        0xc9 -> :sswitch_3
        0xca -> :sswitch_2
        0xcb -> :sswitch_1
        0xcc -> :sswitch_0
    .end sparse-switch
.end method
