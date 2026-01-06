.class public final Landroidx/car/app/model/CarColor;
.super Ljava/lang/Object;
.source "CarColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/CarColor$CarColorType;
    }
.end annotation


# static fields
.field public static final BLUE:Landroidx/car/app/model/CarColor;

.field public static final DEFAULT:Landroidx/car/app/model/CarColor;

.field public static final GREEN:Landroidx/car/app/model/CarColor;

.field public static final PRIMARY:Landroidx/car/app/model/CarColor;

.field public static final RED:Landroidx/car/app/model/CarColor;

.field public static final SECONDARY:Landroidx/car/app/model/CarColor;

.field public static final TYPE_BLUE:I = 0x6

.field public static final TYPE_CUSTOM:I = 0x0

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_GREEN:I = 0x5

.field public static final TYPE_PRIMARY:I = 0x2

.field public static final TYPE_RED:I = 0x4

.field public static final TYPE_SECONDARY:I = 0x3

.field public static final TYPE_YELLOW:I = 0x7

.field public static final YELLOW:Landroidx/car/app/model/CarColor;


# instance fields
.field private final mColor:I

.field private final mColorDark:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    .line 189
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarColor;->PRIMARY:Landroidx/car/app/model/CarColor;

    .line 197
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarColor;->SECONDARY:Landroidx/car/app/model/CarColor;

    .line 201
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarColor;->RED:Landroidx/car/app/model/CarColor;

    .line 205
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarColor;->GREEN:Landroidx/car/app/model/CarColor;

    .line 209
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarColor;->BLUE:Landroidx/car/app/model/CarColor;

    .line 213
    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/car/app/model/CarColor;->create(I)Landroidx/car/app/model/CarColor;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarColor;->YELLOW:Landroidx/car/app/model/CarColor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/model/CarColor;->mType:I

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/model/CarColor;->mColor:I

    .line 317
    iput v0, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    .line 318
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "colorDark"    # I

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput p1, p0, Landroidx/car/app/model/CarColor;->mType:I

    .line 322
    iput p2, p0, Landroidx/car/app/model/CarColor;->mColor:I

    .line 323
    iput p3, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    .line 324
    return-void
.end method

.method private static create(I)Landroidx/car/app/model/CarColor;
    .locals 2
    .param p0, "type"    # I

    .line 288
    new-instance v0, Landroidx/car/app/model/CarColor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/car/app/model/CarColor;-><init>(III)V

    return-object v0
.end method

.method public static createCustom(II)Landroidx/car/app/model/CarColor;
    .locals 2
    .param p0, "color"    # I
    .param p1, "colorDark"    # I

    .line 234
    new-instance v0, Landroidx/car/app/model/CarColor;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroidx/car/app/model/CarColor;-><init>(III)V

    return-object v0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 292
    packed-switch p0, :pswitch_data_0

    .line 310
    const-string v0, "<unknown>"

    return-object v0

    .line 308
    :pswitch_0
    const-string v0, "YELLOW"

    return-object v0

    .line 294
    :pswitch_1
    const-string v0, "BLUE"

    return-object v0

    .line 304
    :pswitch_2
    const-string v0, "GREEN"

    return-object v0

    .line 306
    :pswitch_3
    const-string v0, "RED"

    return-object v0

    .line 300
    :pswitch_4
    const-string v0, "SECONDARY"

    return-object v0

    .line 298
    :pswitch_5
    const-string v0, "PRIMARY"

    return-object v0

    .line 296
    :pswitch_6
    const-string v0, "DEFAULT"

    return-object v0

    .line 302
    :pswitch_7
    const-string v0, "CUSTOM"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 274
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 275
    return v0

    .line 277
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/CarColor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 278
    return v2

    .line 280
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/CarColor;

    .line 282
    .local v1, "otherColor":Landroidx/car/app/model/CarColor;
    iget v3, p0, Landroidx/car/app/model/CarColor;->mColor:I

    iget v4, v1, Landroidx/car/app/model/CarColor;->mColor:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    iget v4, v1, Landroidx/car/app/model/CarColor;->mColorDark:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/car/app/model/CarColor;->mType:I

    iget v4, v1, Landroidx/car/app/model/CarColor;->mType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getColor()I
    .locals 1

    .line 249
    iget v0, p0, Landroidx/car/app/model/CarColor;->mColor:I

    return v0
.end method

.method public getColorDark()I
    .locals 1

    .line 258
    iget v0, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 240
    iget v0, p0, Landroidx/car/app/model/CarColor;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 269
    iget v0, p0, Landroidx/car/app/model/CarColor;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarColor;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarColor;->mType:I

    invoke-static {v1}, Landroidx/car/app/model/CarColor;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarColor;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarColor;->mColorDark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
