.class public Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_ENCRYPT_STATUS;
.super Ljava/lang/Object;
.source "QuantumSecurityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QUANTUM_ENCRYPT_STATUS"
.end annotation


# static fields
.field public static final DISABLED:I = 0x4

.field public static final ENABLED:I = 0x3

.field public static final OBTAIN_KEY:I = 0x2

.field public static final PEER_VERIFIED:I = 0x1

.field public static final PROGRESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
