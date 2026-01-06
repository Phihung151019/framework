.class Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor$InstanceHolder;
.super Ljava/lang/Object;
.source "EndpointMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor$InstanceHolder;->INSTANCE:Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;-><init>(Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor-IA;)V

    sput-object v0, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor$InstanceHolder;->INSTANCE:Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
