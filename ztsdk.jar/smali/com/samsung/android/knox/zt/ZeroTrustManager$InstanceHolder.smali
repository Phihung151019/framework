.class Lcom/samsung/android/knox/zt/ZeroTrustManager$InstanceHolder;
.super Ljava/lang/Object;
.source "ZeroTrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/ZeroTrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/knox/zt/ZeroTrustManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/knox/zt/ZeroTrustManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/zt/ZeroTrustManager$InstanceHolder;->INSTANCE:Lcom/samsung/android/knox/zt/ZeroTrustManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/samsung/android/knox/zt/ZeroTrustManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/ZeroTrustManager;-><init>(Lcom/samsung/android/knox/zt/ZeroTrustManager-IA;)V

    sput-object v0, Lcom/samsung/android/knox/zt/ZeroTrustManager$InstanceHolder;->INSTANCE:Lcom/samsung/android/knox/zt/ZeroTrustManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
