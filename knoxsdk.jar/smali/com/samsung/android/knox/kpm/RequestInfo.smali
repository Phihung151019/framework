.class Lcom/samsung/android/knox/kpm/RequestInfo;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist CMD_IS_REGISTERED:I = 0x3

.field public static final greylist CMD_REGISTER:I = 0x1

.field public static final greylist CMD_UNREGISTER:I = 0x2


# instance fields
.field public greylist mCmd:I

.field public greylist mForce:Z


# direct methods
.method public constructor greylist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    return-void
.end method

.method public constructor greylist <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    iput-boolean p2, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    return-void
.end method


# virtual methods
.method public greylist getCmd()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    return p0
.end method

.method public greylist isForce()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    return p0
.end method
