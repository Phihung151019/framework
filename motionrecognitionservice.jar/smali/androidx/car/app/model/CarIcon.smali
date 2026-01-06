.class public final Landroidx/car/app/model/CarIcon;
.super Ljava/lang/Object;
.source "CarIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/CarIcon$Builder;,
        Landroidx/car/app/model/CarIcon$CarIconType;
    }
.end annotation


# static fields
.field public static final ALERT:Landroidx/car/app/model/CarIcon;

.field public static final APP_ICON:Landroidx/car/app/model/CarIcon;

.field public static final BACK:Landroidx/car/app/model/CarIcon;

.field public static final ERROR:Landroidx/car/app/model/CarIcon;

.field public static final PAN:Landroidx/car/app/model/CarIcon;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x2
    .end annotation
.end field

.field public static final TYPE_ALERT:I = 0x4

.field public static final TYPE_APP_ICON:I = 0x5

.field public static final TYPE_BACK:I = 0x3

.field public static final TYPE_CUSTOM:I = 0x1

.field public static final TYPE_ERROR:I = 0x6

.field public static final TYPE_PAN:I = 0x7

.field private static final TYPE_RESOURCE:I = 0x2

.field private static final TYPE_URI:I = 0x4


# instance fields
.field private final mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private final mTint:Landroidx/car/app/model/CarColor;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/car/app/model/CarIcon;->forStandardType(I)Landroidx/car/app/model/CarIcon;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarIcon;->APP_ICON:Landroidx/car/app/model/CarIcon;

    .line 172
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/car/app/model/CarIcon;->forStandardType(I)Landroidx/car/app/model/CarIcon;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarIcon;->BACK:Landroidx/car/app/model/CarIcon;

    .line 178
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/car/app/model/CarIcon;->forStandardType(I)Landroidx/car/app/model/CarIcon;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarIcon;->ALERT:Landroidx/car/app/model/CarIcon;

    .line 184
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/car/app/model/CarIcon;->forStandardType(I)Landroidx/car/app/model/CarIcon;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarIcon;->ERROR:Landroidx/car/app/model/CarIcon;

    .line 191
    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/car/app/model/CarIcon;->forStandardType(I)Landroidx/car/app/model/CarIcon;

    move-result-object v0

    sput-object v0, Landroidx/car/app/model/CarIcon;->PAN:Landroidx/car/app/model/CarIcon;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/app/model/CarIcon;->mType:I

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 335
    iput-object v0, p0, Landroidx/car/app/model/CarIcon;->mTint:Landroidx/car/app/model/CarColor;

    .line 336
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Landroidx/car/app/model/CarColor;I)V
    .locals 0
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "tint"    # Landroidx/car/app/model/CarColor;
    .param p3, "type"    # I

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput p3, p0, Landroidx/car/app/model/CarIcon;->mType:I

    .line 327
    iput-object p1, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 328
    iput-object p2, p0, Landroidx/car/app/model/CarIcon;->mTint:Landroidx/car/app/model/CarColor;

    .line 329
    return-void
.end method

.method private static forStandardType(I)Landroidx/car/app/model/CarIcon;
    .locals 1
    .param p0, "type"    # I

    .line 299
    sget-object v0, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    invoke-static {p0, v0}, Landroidx/car/app/model/CarIcon;->forStandardType(ILandroidx/car/app/model/CarColor;)Landroidx/car/app/model/CarIcon;

    move-result-object v0

    return-object v0
.end method

.method private static forStandardType(ILandroidx/car/app/model/CarColor;)Landroidx/car/app/model/CarIcon;
    .locals 2
    .param p0, "type"    # I
    .param p1, "tint"    # Landroidx/car/app/model/CarColor;

    .line 303
    new-instance v0, Landroidx/car/app/model/CarIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Landroidx/car/app/model/CarIcon;-><init>(Landroidx/core/graphics/drawable/IconCompat;Landroidx/car/app/model/CarColor;I)V

    return-object v0
.end method

.method private iconCompatEquals(Landroidx/core/graphics/drawable/IconCompat;)Z
    .locals 6
    .param p1, "other"    # Landroidx/core/graphics/drawable/IconCompat;

    .line 272
    iget-object v0, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 273
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 274
    :cond_1
    if-nez p1, :cond_2

    .line 275
    return v2

    .line 278
    :cond_2
    iget-object v0, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    .line 279
    .local v0, "type":I
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v3

    .line 281
    .local v3, "otherType":I
    if-eq v0, v3, :cond_3

    .line 282
    return v2

    .line 286
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 287
    iget-object v4, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v4}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 288
    invoke-virtual {v4}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v4

    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v5

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 287
    :goto_1
    return v1

    .line 289
    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 290
    iget-object v1, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 295
    :cond_6
    return v1
.end method

.method private iconCompatHash()Ljava/lang/Object;
    .locals 3

    .line 257
    iget-object v0, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_0
    iget-object v0, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v0

    .line 262
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 264
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 265
    iget-object v1, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 268
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 307
    packed-switch p0, :pswitch_data_0

    .line 321
    :pswitch_0
    const-string v0, "<unknown>"

    return-object v0

    .line 317
    :pswitch_1
    const-string v0, "PAN"

    return-object v0

    .line 313
    :pswitch_2
    const-string v0, "ERROR"

    return-object v0

    .line 311
    :pswitch_3
    const-string v0, "APP"

    return-object v0

    .line 309
    :pswitch_4
    const-string v0, "ALERT"

    return-object v0

    .line 315
    :pswitch_5
    const-string v0, "BACK"

    return-object v0

    .line 319
    :pswitch_6
    const-string v0, "CUSTOM"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 241
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 242
    return v0

    .line 244
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/CarIcon;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 245
    return v2

    .line 247
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/CarIcon;

    .line 249
    .local v1, "otherIcon":Landroidx/car/app/model/CarIcon;
    iget v3, p0, Landroidx/car/app/model/CarIcon;->mType:I

    iget v4, v1, Landroidx/car/app/model/CarIcon;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/car/app/model/CarIcon;->mTint:Landroidx/car/app/model/CarColor;

    iget-object v4, v1, Landroidx/car/app/model/CarIcon;->mTint:Landroidx/car/app/model/CarColor;

    .line 250
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 251
    invoke-direct {p0, v3}, Landroidx/car/app/model/CarIcon;->iconCompatEquals(Landroidx/core/graphics/drawable/IconCompat;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 249
    :goto_0
    return v0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 208
    iget-object v0, p0, Landroidx/car/app/model/CarIcon;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getTint()Landroidx/car/app/model/CarColor;
    .locals 1

    .line 218
    iget-object v0, p0, Landroidx/car/app/model/CarIcon;->mTint:Landroidx/car/app/model/CarColor;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 226
    iget v0, p0, Landroidx/car/app/model/CarIcon;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 236
    iget v0, p0, Landroidx/car/app/model/CarIcon;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/CarIcon;->mTint:Landroidx/car/app/model/CarColor;

    invoke-direct {p0}, Landroidx/car/app/model/CarIcon;->iconCompatHash()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/car/app/model/CarIcon;->mType:I

    invoke-static {v1}, Landroidx/car/app/model/CarIcon;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/model/CarIcon;->mTint:Landroidx/car/app/model/CarColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
