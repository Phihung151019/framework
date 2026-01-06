.class public final Landroidx/car/app/HandshakeInfo;
.super Ljava/lang/Object;
.source "HandshakeInfo.java"


# instance fields
.field private final mHostCarAppApiLevel:I

.field private final mHostPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/HandshakeInfo;->mHostPackageName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/app/HandshakeInfo;->mHostCarAppApiLevel:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "hostPackageName"    # Ljava/lang/String;
    .param p2, "hostCarAppApiLevel"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/car/app/HandshakeInfo;->mHostPackageName:Ljava/lang/String;

    .line 45
    iput p2, p0, Landroidx/car/app/HandshakeInfo;->mHostCarAppApiLevel:I

    .line 46
    return-void
.end method


# virtual methods
.method public getHostCarAppApiLevel()I
    .locals 1

    .line 66
    iget v0, p0, Landroidx/car/app/HandshakeInfo;->mHostCarAppApiLevel:I

    return v0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/car/app/HandshakeInfo;->mHostPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
