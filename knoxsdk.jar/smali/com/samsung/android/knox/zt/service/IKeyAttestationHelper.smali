.class public interface abstract Lcom/samsung/android/knox/zt/service/IKeyAttestationHelper;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# virtual methods
.method public abstract blacklist attestKey(Ljava/lang/String;[BZ)Z
.end method

.method public abstract blacklist getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
.end method

.method public abstract blacklist setCertificateChain(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z
.end method

.method public abstract blacklist sign(Ljava/lang/String;[B)[B
.end method
