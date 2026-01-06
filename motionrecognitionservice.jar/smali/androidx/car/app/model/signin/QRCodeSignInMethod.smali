.class public final Landroidx/car/app/model/signin/QRCodeSignInMethod;
.super Ljava/lang/Object;
.source "QRCodeSignInMethod.java"

# interfaces
.implements Landroidx/car/app/model/signin/SignInTemplate$SignInMethod;


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x4
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/model/signin/QRCodeSignInMethod;->mUri:Landroid/net/Uri;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroidx/car/app/model/signin/QRCodeSignInMethod;->mUri:Landroid/net/Uri;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 58
    if-ne p0, p1, :cond_0

    .line 59
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    instance-of v0, p1, Landroidx/car/app/model/signin/QRCodeSignInMethod;

    if-nez v0, :cond_1

    .line 63
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/car/app/model/signin/QRCodeSignInMethod;

    .line 67
    .local v0, "that":Landroidx/car/app/model/signin/QRCodeSignInMethod;
    iget-object v1, p0, Landroidx/car/app/model/signin/QRCodeSignInMethod;->mUri:Landroid/net/Uri;

    iget-object v2, v0, Landroidx/car/app/model/signin/QRCodeSignInMethod;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/car/app/model/signin/QRCodeSignInMethod;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/car/app/model/signin/QRCodeSignInMethod;->mUri:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
