.class public Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_AUTH_STATUS;
.super Ljava/lang/Object;
.source "QuantumSecurityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QUANTUM_AUTH_STATUS"
.end annotation


# static fields
.field public static final AUTH_STATUS_FAIL:I = 0x1

.field public static final AUTH_STATUS_INVALID:I = -0x1

.field public static final AUTH_STATUS_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
