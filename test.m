function test(qn,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20)
    Vmin = 15 ;
    Vmax = 35 ;
    Nz = zeros(1,20) ;
    Nz (1,1) = N1 ;
    Nz (1,2) = N2 ;
    Nz (1,3) = N3 ;
    Nz (1,4) = N4 ;
    Nz (1,5) = N5 ;
    Nz (1,6) = N6 ;
    Nz (1,7) = N7 ;
    Nz (1,8) = N8 ;
    Nz (1,9) = N9 ;
    Nz (1,10) = N10 ;
    Nz (1,11) = N11 ;
    Nz (1,12) = N12 ;
    Nz (1,13) = N13 ;
    Nz (1,14) = N14 ;
    Nz (1,15) = N15 ;
    Nz (1,16) = N16 ;
    Nz (1,17) = N17 ;
    Nz (1,18) = N18 ;
    Nz (1,19) = N19 ;
    Nz (1,20) = N20 ;
    D = max(Nz) ;
    FlowNozzle = zeros(D,8) ;
    FlowNozzle (:,1) = 1:D ;
    for i1=1:D
        FlowNozzle(i1,2) = (i1*25.4/1000)^2 * pi / 4 ;
        FlowNozzle(i1,3) = FlowNozzle(i1,2) * Vmin ;
        FlowNozzle(i1,4) = FlowNozzle(i1,2) * Vmax ;
        FlowNozzle(i1,5) = FlowNozzle(i1,3) * 3600 ;
        FlowNozzle(i1,6) = FlowNozzle(i1,4) * 3600 ;
        FlowNozzle(i1,7) = FlowNozzle(i1,3) * 2118.88 ;
        FlowNozzle(i1,8) = FlowNozzle(i1,4) * 2118.88 ;
    end
    q = qn ;
    nozzles = zeros(q,1) ;
    for i=1:q
        nozzles(i,1) = Nz(i) ;
    end
    nozzles = sort(nozzles) ;
    CFM = zeros (1000,q) ;
    e = 1 ;
    if q>=1
        singlenozzle = nozzles ;
        singlenozzle = unique(singlenozzle) ;
        for i=1:length(singlenozzle)
            CFM(e,1) = singlenozzle (i,1) ;
            e = e+1 ;
        end
    end
    for i=1:length(nozzles)
        if nozzles(i,1) == 10
            nozzles(i,1) = 0 ;
        end
    end
    if q>=2
        doublenozzletemp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-1
            for j=i+1:q
                doublenozzletemp(c,1) = nozzles(i)*10 + nozzles(j) ;
                c = c+1 ;
            end
        end
        doublenozzletemp = unique(doublenozzletemp) ;
        doublenozzle = zeros(length(doublenozzletemp)-1,2) ;
        for i=1:length(doublenozzletemp)-1
            doublenozzle(i,:) = breaker(doublenozzletemp(i+1,1)) ;
        end
        for i=1:length(doublenozzletemp)-1
            for j=1:2
                CFM(e,j) = doublenozzle (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=3
        triplenozzletemp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-2
            for j=i+1:q-1
                for k=j+1:q
                    triplenozzletemp(c,1) = nozzles(i)*100 + nozzles(j)*10 + nozzles(k) ;
                    c = c+1 ;
                end
            end
        end
        triplenozzletemp = unique(triplenozzletemp) ;
        triplenozzle = zeros(length(triplenozzletemp)-1,3) ;
        for i=1:length(triplenozzletemp)-1
            triplenozzle(i,:) = breaker(triplenozzletemp(i+1,1)) ;
        end
        for i=1:length(triplenozzletemp)-1
            for j=1:3
                CFM(e,j) = triplenozzle (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=4
        quadruplenozzletemp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-3
            for j=i+1:q-2
                for k=j+1:q-1
                    for m=k+1:q
                        quadruplenozzletemp(c,1) = nozzles(i)*1000 + nozzles(j)*100 + nozzles(k)*10 + nozzles(m) ;
                        c = c+1 ;
                    end
                end
            end
        end
        quadruplenozzletemp = unique(quadruplenozzletemp) ;
        quadruplenozzle = zeros(length(quadruplenozzletemp)-1,4) ;
        for i=1:length(quadruplenozzletemp)-1
            quadruplenozzle(i,:) = breaker(quadruplenozzletemp(i+1,1)) ;
        end
        for i=1:length(quadruplenozzletemp)-1
            for j=1:4
                CFM(e,j) = quadruplenozzle (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=5
        quintuplenozzletemp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-4
            for j=i+1:q-3
                for k=j+1:q-2
                    for m=k+1:q-1
                        for n=m+1:q
                            quintuplenozzletemp(c,1) = nozzles(i)*10000 + nozzles(j)*1000 + nozzles(k)*100 + nozzles(m)*10 + nozzles(n) ;
                            c = c+1 ;
                        end
                    end
                end
            end
        end
        quintuplenozzletemp = unique(quintuplenozzletemp) ;
        quintuplenozzle = zeros(length(quintuplenozzletemp)-1,5) ;
        for i=1:length(quintuplenozzletemp)-1
            quintuplenozzle(i,:) = breaker(quintuplenozzletemp(i+1,1)) ;
        end
        for i=1:length(quintuplenozzletemp)-1
            for j=1:5
                CFM(e,j) = quintuplenozzle (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=6
        sextuplenozzletemp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-5
            for j=i+1:q-4
                for k=j+1:q-3
                    for m=k+1:q-2
                        for n=m+1:q-1
                            for p=n+1:q
                                sextuplenozzletemp(c,1) = nozzles(i)*100000 + nozzles(j)*10000 + nozzles(k)*1000 + nozzles(m)*100 + nozzles(n)*10 + nozzles(p) ;
                                c = c+1 ;
                            end
                        end
                    end
                end
            end
        end
        sextuplenozzletemp = unique(sextuplenozzletemp) ;
        sextuplenozzle = zeros(length(sextuplenozzletemp)-1,6) ;
        for i=1:length(sextuplenozzletemp)-1
            sextuplenozzle(i,:) = breaker(sextuplenozzletemp(i+1,1)) ;
        end
        for i=1:length(sextuplenozzletemp)-1
            for j=1:6
                CFM(e,j) = sextuplenozzle (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=7
        septuplenozzletemp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-6
            for j=i+1:q-5
                for k=j+1:q-4
                    for m=k+1:q-3
                        for n=m+1:q-2
                            for p=n+1:q-1
                                for h=p+1:q
                                    septuplenozzletemp(c,1) = nozzles(i)*1000000 + nozzles(j)*100000 + nozzles(k)*10000 + nozzles(m)*1000 + nozzles(n)*100 + nozzles(p)*10 + nozzles(h) ;
                                    c = c+1 ;
                                end
                            end
                        end
                    end
                end
            end
        end
        septuplenozzletemp = unique(septuplenozzletemp) ;
        septuplenozzle = zeros(length(septuplenozzletemp)-1,7) ;
        for i=1:length(septuplenozzletemp)-1
            septuplenozzle(i,:) = breaker(septuplenozzletemp(i+1,1)) ;
        end
        for i=1:length(septuplenozzletemp)-1
            for j=1:7
                CFM(e,j) = septuplenozzle (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=8
        octuplenozzletemp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-7
            for j=i+1:q-6
                for k=j+1:q-5
                    for m=k+1:q-4
                        for n=m+1:q-3
                            for p=n+1:q-2
                                for h=p+1:q-1
                                    for t=h+1:q
                                        octuplenozzletemp(c,1) = nozzles(i)*10000000 + nozzles(j)*1000000 + nozzles(k)*100000 + nozzles(m)*10000 + nozzles(n)*1000 + nozzles(p)*100 + nozzles(h)*10 + nozzles(t) ;
                                        c = c+1 ;
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        octuplenozzletemp = unique(octuplenozzletemp) ;
        octuplenozzle = zeros(length(octuplenozzletemp)-1,8) ;
        for i=1:length(octuplenozzletemp)-1
            octuplenozzle(i,:) = breaker(octuplenozzletemp(i+1,1)) ;
        end
        for i=1:length(octuplenozzletemp)-1
            for j=1:8
                CFM(e,j) = octuplenozzle (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=9
        nonuplenozzletemp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-8
            for j=i+1:q-7
                for k=j+1:q-6
                    for m=k+1:q-5
                        for n=m+1:q-4
                            for p=n+1:q-3
                                for h=p+1:q-2
                                    for t=h+1:q-1
                                        for o=t+1:q
                                            nonuplenozzletemp(c,1) = nozzles(i)*100000000 + nozzles(j)*10000000 + nozzles(k)*1000000 + nozzles(m)*100000 + nozzles(n)*10000 + nozzles(p)*1000 + nozzles(h)*100 + nozzles(t)*10 + nozzles(o) ;
                                            c = c+1 ;
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nonuplenozzletemp = unique(nonuplenozzletemp) ;
        nonuplenozzle = zeros(length(nonuplenozzletemp)-1,9) ;
        for i=1:length(nonuplenozzletemp)-1
            nonuplenozzle(i,:) = breaker(nonuplenozzletemp(i+1,1)) ;
        end
        for i=1:length(nonuplenozzletemp)-1
            for j=1:9
                CFM(e,j) = nonuplenozzle (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=10
        decuplenozzletemp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-9
            for j=i+1:q-8
                for k=j+1:q-7
                    for m=k+1:q-6
                        for n=m+1:q-5
                            for p=n+1:q-4
                                for h=p+1:q-3
                                    for t=h+1:q-2
                                        for o=t+1:q-1
                                            for u=o+1:q
                                                decuplenozzletemp(c,1) = nozzles(i)*1000000000 + nozzles(j)*100000000 + nozzles(k)*10000000 + nozzles(m)*1000000 + nozzles(n)*100000 + nozzles(p)*10000 + nozzles(h)*1000 + nozzles(t)*100 + nozzles(o)*10 + nozzles(u) ;
                                                c = c+1 ;
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        decuplenozzletemp = unique(decuplenozzletemp) ;
        decuplenozzle = zeros(length(decuplenozzletemp)-1,10) ;
        for i=1:length(decuplenozzletemp)-1
            decuplenozzle(i,:) = breaker(decuplenozzletemp(i+1,1)) ;
        end
        for i=1:length(decuplenozzletemp)-1
            for j=1:10
                CFM(e,j) = decuplenozzle (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=11
        nozzle11temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-10
            for j=i+1:q-9
                for k=j+1:q-8
                    for m=k+1:q-7
                        for n=m+1:q-6
                            for p=n+1:q-5
                                for h=p+1:q-4
                                    for t=h+1:q-3
                                        for o=t+1:q-2
                                            for u=o+1:q-1
                                                for ii=u+1:q
                                                    nozzle11temp(c,1) = nozzles(i)*10000000000 + nozzles(j)*1000000000 + nozzles(k)*100000000 + nozzles(m)*10000000 + nozzles(n)*1000000 + nozzles(p)*100000 + nozzles(h)*10000 + nozzles(t)*1000 + nozzles(o)*100 + nozzles(u)*10 + nozzles(ii) ;
                                                    c = c+1 ;
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle11temp = unique(nozzle11temp) ;
        nozzle11 = zeros(length(nozzle11temp)-1,11) ;
        for i=1:length(nozzle11temp)-1
            nozzle11(i,:) = breaker(nozzle11temp(i+1,1)) ;
        end
        for i=1:length(nozzle11temp)-1
            for j=1:11
                CFM(e,j) = nozzle11 (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=12
        nozzle12temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-11
            for j=i+1:q-10
                for k=j+1:q-9
                    for m=k+1:q-8
                        for n=m+1:q-7
                            for p=n+1:q-6
                                for h=p+1:q-5
                                    for t=h+1:q-4
                                        for o=t+1:q-3
                                            for u=o+1:q-2
                                                for ii=u+1:q-1
                                                    for jj=ii+1:q
                                                        nozzle12temp(c,1) = nozzles(i)*100000000000 + nozzles(j)*10000000000 + nozzles(k)*1000000000 + nozzles(m)*100000000 + nozzles(n)*10000000 + nozzles(p)*1000000 + nozzles(h)*100000 + nozzles(t)*10000 + nozzles(o)*1000 + nozzles(u)*100 + nozzles(ii)*10 + nozzles(jj) ;
                                                        c = c+1 ;
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle12temp = unique(nozzle12temp) ;
        nozzle12 = zeros(length(nozzle12temp)-1,12) ;
        for i=1:length(nozzle12temp)-1
            nozzle12(i,:) = breaker(nozzle12temp(i+1,1)) ;
        end
        for i=1:length(nozzle12temp)-1
            for j=1:12
                CFM(e,j) = nozzle12 (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=13
        nozzle13temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-11
            for j=i+1:q-11
                for k=j+1:q-10
                    for m=k+1:q-9
                        for n=m+1:q-8
                            for p=n+1:q-7
                                for h=p+1:q-6
                                    for t=h+1:q-5
                                        for o=t+1:q-4
                                            for u=o+1:q-3
                                                for ii=u+1:q-2
                                                    for jj=ii+1:q-1
                                                        for kk=jj+1:q
                                                            nozzle13temp(c,1) = nozzles(i)*1000000000000 + nozzles(j)*100000000000 + nozzles(k)*10000000000 + nozzles(m)*1000000000 + nozzles(n)*100000000 + nozzles(p)*10000000 + nozzles(h)*1000000 + nozzles(t)*100000 + nozzles(o)*10000 + nozzles(u)*1000 + nozzles(ii)*100 + nozzles(jj)*10 + nozzles(kk) ;
                                                            c = c+1 ;
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle13temp = unique(nozzle13temp) ;
        nozzle13 = zeros(length(nozzle13temp)-1,13) ;
        for i=1:length(nozzle13temp)-1
            nozzle13(i,:) = breaker(nozzle13temp(i+1,1)) ;
        end
        for i=1:length(nozzle13temp)-1
            for j=1:13
                CFM(e,j) = nozzle13 (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=14
        nozzle14temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-13
            for j=i+1:q-12
                for k=j+1:q-11
                    for m=k+1:q-10
                        for n=m+1:q-9
                            for p=n+1:q-8
                                for h=p+1:q-7
                                    for t=h+1:q-6
                                        for o=t+1:q-5
                                            for u=o+1:q-4
                                                for ii=u+1:q-3
                                                    for jj=ii+1:q-2
                                                        for kk=jj+1:q-1
                                                            for mm=kk+1:q
                                                                nozzle14temp(c,1) = nozzles(i)*10000000000000 + nozzles(j)*1000000000000 + nozzles(k)*100000000000 + nozzles(m)*10000000000 + nozzles(n)*1000000000 + nozzles(p)*100000000 + nozzles(h)*10000000 + nozzles(t)*1000000 + nozzles(o)*100000 + nozzles(u)*10000 + nozzles(ii)*1000 + nozzles(jj)*100 + nozzles(kk)+10 + nozzles(mm) ;
                                                                c = c+1 ;
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle14temp = unique(nozzle14temp) ;
        nozzle14 = zeros(length(nozzle14temp)-1,14) ;
        for i=1:length(nozzle14temp)-1
            nozzle14(i,:) = breaker(nozzle14temp(i+1,1)) ;
        end
        for i=1:length(nozzle14temp)-1
            for j=1:14
                CFM(e,j) = nozzle14 (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=15
        nozzle15temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-14
            for j=i+1:q-13
                for k=j+1:q-12
                    for m=k+1:q-11
                        for n=m+1:q-10
                            for p=n+1:q-9
                                for h=p+1:q-8
                                    for t=h+1:q-7
                                        for o=t+1:q-6
                                            for u=o+1:q-5
                                                for ii=u+1:q-4
                                                    for jj=ii+1:q-3
                                                        for kk=jj+1:q-2
                                                            for mm=kk+1:q-1
                                                                for nn=mm+1:q
                                                                    nozzle15temp(c,1) = nozzles(i)*100000000000000 + nozzles(j)*10000000000000 + nozzles(k)*1000000000000 + nozzles(m)*100000000000 + nozzles(n)*10000000000 + nozzles(p)*1000000000 + nozzles(h)*100000000 + nozzles(t)*10000000 + nozzles(o)*1000000 + nozzles(u)*100000 + nozzles(ii)*10000 + nozzles(jj)*1000 + nozzles(kk)*100 + nozzles(mm)*10 + nozzles(nn) ;
                                                                    c = c+1 ;
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle15temp = unique(nozzle15temp) ;
        nozzle15 = zeros(length(nozzle15temp)-1,15) ;
        for i=1:length(nozzle15temp)-1
            nozzle15(i,:) = breaker(nozzle15temp(i+1,1)) ;
        end
        for i=1:length(nozzle15temp)-1
            for j=1:15
                CFM(e,j) = nozzle15 (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=16
        nozzle16temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-15
            for j=i+1:q-14
                for k=j+1:q-13
                    for m=k+1:q-12
                        for n=m+1:q-11
                            for p=n+1:q-10
                                for h=p+1:q-9
                                    for t=h+1:q-8
                                        for o=t+1:q-7
                                            for u=o+1:q-6
                                                for ii=u+1:q-5
                                                    for jj=ii+1:q-4
                                                        for kk=jj+1:q-3
                                                            for mm=kk+1:q-2
                                                                for nn=mm+1:q-1
                                                                    for pp=nn+1:q
                                                                        nozzle16temp(c,1) = nozzles(i)*1000000000000000 + nozzles(j)*100000000000000 + nozzles(k)*10000000000000 + nozzles(m)*1000000000000 + nozzles(n)*100000000000 + nozzles(p)*10000000000 + nozzles(h)*1000000000 + nozzles(t)*100000000 + nozzles(o)*10000000 + nozzles(u)*1000000 + nozzles(ii)*100000 + nozzles(jj)*10000 + nozzles(kk)*1000 + nozzles(mm)*100 + nozzles(nn)*10 + nozzles(pp) ;
                                                                        c = c+1 ;
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle16temp = unique(nozzle16temp) ;
        nozzle16 = zeros(length(nozzle16temp)-1,16) ;
        for i=1:length(nozzle16temp)-1
            nozzle16(i,:) = breaker(nozzle16temp(i+1,1)) ;
        end
        for i=1:length(nozzle16temp)-1
            for j=1:16
                CFM(e,j) = nozzle16 (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=17
        nozzle17temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-16
            for j=i+1:q-15
                for k=j+1:q-14
                    for m=k+1:q-13
                        for n=m+1:q-12
                            for p=n+1:q-11
                                for h=p+1:q-10
                                    for t=h+1:q-9
                                        for o=t+1:q-8
                                            for u=o+1:q-7
                                                for ii=u+1:q-6
                                                    for jj=ii+1:q-5
                                                        for kk=jj+1:q-4
                                                            for mm=kk+1:q-3
                                                                for nn=mm+1:q-2
                                                                    for pp=nn+1:q-1
                                                                        for hh=pp+1:q
                                                                            nozzle17temp(c,1) = nozzles(i)*10000000000000000 + nozzles(j)*1000000000000000 + nozzles(k)*100000000000000 + nozzles(m)*10000000000000 + nozzles(n)*1000000000000 + nozzles(p)*100000000000 + nozzles(h)*10000000000 + nozzles(t)*1000000000 + nozzles(o)*100000000 + nozzles(u)*10000000 + nozzles(ii)*1000000 + nozzles(jj)*100000 + nozzles(kk)*10000 + nozzles(mm)*1000 + nozzles(nn)*100 + nozzles(pp)*10 + nozzles(hh) ;
                                                                            c = c+1 ;
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle17temp = unique(nozzle17temp) ;
        nozzle17 = zeros(length(nozzle17temp)-1,17) ;
        for i=1:length(nozzle17temp)-1
            nozzle17(i,:) = breaker(nozzle17temp(i+1,1)) ;
        end
        for i=1:length(nozzle17temp)-1
            for j=1:17
                CFM(e,j) = nozzle17 (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=18
        nozzle18temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-17
            for j=i+1:q-16
                for k=j+1:q-15
                    for m=k+1:q-14
                        for n=m+1:q-13
                            for p=n+1:q-12
                                for h=p+1:q-11
                                    for t=h+1:q-10
                                        for o=t+1:q-9
                                            for u=o+1:q-8
                                                for ii=u+1:q-7
                                                    for jj=ii+1:q-6
                                                        for kk=jj+1:q-5
                                                            for mm=kk+1:q-4
                                                                for nn=mm+1:q-3
                                                                    for pp=nn+1:q-2
                                                                        for hh=pp+1:q-1
                                                                            for tt=hh+1:q
                                                                                nozzle18temp(c,1) = nozzles(i)*100000000000000000 + nozzles(j)*10000000000000000 + nozzles(k)*1000000000000000 + nozzles(m)*100000000000000 + nozzles(n)*10000000000000 + nozzles(p)*1000000000000 + nozzles(h)*100000000000 + nozzles(t)*10000000000 + nozzles(o)*1000000000 + nozzles(u)*100000000 + nozzles(ii)*10000000 + nozzles(jj)*1000000 + nozzles(kk)*100000 + nozzles(mm)*10000 + nozzles(nn)*1000 + nozzles(pp)*100 + nozzles(hh)*10 + nozzles(tt) ;
                                                                                c = c+1 ;
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle18temp = unique(nozzle18temp) ;
        nozzle18 = zeros(length(nozzle18temp)-1,18) ;
        for i=1:length(nozzle18temp)-1
            nozzle18(i,:) = breaker(nozzle18temp(i+1,1)) ;
        end
        for i=1:length(nozzle18temp)-1
            for j=1:18
                CFM(e,j) = nozzle18 (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=19
        nozzle19temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-18
            for j=i+1:q-17
                for k=j+1:q-16
                    for m=k+1:q-15
                        for n=m+1:q-14
                            for p=n+1:q-13
                                for h=p+1:q-12
                                    for t=h+1:q-11
                                        for o=t+1:q-10
                                            for u=o+1:q-9
                                                for ii=u+1:q-8
                                                    for jj=ii+1:q-7
                                                        for kk=jj+1:q-6
                                                            for mm=kk+1:q-5
                                                                for nn=mm+1:q-4
                                                                    for pp=nn+1:q-3
                                                                        for hh=pp+1:q-2
                                                                            for tt=hh+1:q-1
                                                                                for oo=tt+1:q
                                                                                    nozzle19temp(c,1) = nozzles(i)*1000000000000000000 + nozzles(j)*100000000000000000 + nozzles(k)*10000000000000000 + nozzles(m)*1000000000000000 + nozzles(n)*100000000000000 + nozzles(p)*10000000000000 + nozzles(h)*1000000000000 + nozzles(t)*100000000000 + nozzles(o)*10000000000 + nozzles(u)*1000000000 + nozzles(ii)*100000000 + nozzles(jj)*10000000 + nozzles(kk)*1000000 + nozzles(mm)*100000 + nozzles(nn)*10000 + nozzles(pp)*1000 + nozzles(hh)*100 + nozzles(tt)*10 + nozzles(oo) ;
                                                                                    c = c+1 ;
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle19temp = unique(nozzle19temp) ;
        nozzle19 = zeros(length(nozzle19temp)-1,19) ;
        for i=1:length(nozzle19temp)-1
            nozzle19(i,:) = breaker(nozzle19temp(i+1,1)) ;
        end
        for i=1:length(nozzle19temp)-1
            for j=1:19
                CFM(e,j) = nozzle19 (i,j) ;
            end
            e = e+1 ;
        end
    end
    if q>=20
        nozzle20temp = zeros(10000,1) ;
        c = 1 ;
        for i=1:q-19
            for j=i+1:q-18
                for k=j+1:q-17
                    for m=k+1:q-16
                        for n=m+1:q-15
                            for p=n+1:q-14
                                for h=p+1:q-13
                                    for t=h+1:q-12
                                        for o=t+1:q-11
                                            for u=o+1:q-10
                                                for ii=u+1:q-9
                                                    for jj=ii+1:q-8
                                                        for kk=jj+1:q-7
                                                            for mm=kk+1:q-6
                                                                for nn=mm+1:q-5
                                                                    for pp=nn+1:q-4
                                                                        for hh=pp+1:q-3
                                                                            for tt=hh+1:q-2
                                                                                for oo=tt+1:q-1
                                                                                    for uu=oo+1:q
                                                                                        nozzle20temp(c,1) = nozzles(i)*10000000000000000000 + nozzles(j)*1000000000000000000 + nozzles(k)*100000000000000000 + nozzles(m)*10000000000000000 + nozzles(n)*1000000000000000 + nozzles(p)*100000000000000 + nozzles(h)*10000000000000 + nozzles(t)*1000000000000 + nozzles(o)*100000000000 + nozzles(u)*10000000000 + nozzles(ii)*1000000000 + nozzles(jj)*100000000 + nozzles(kk)*10000000 + nozzles(mm)*1000000 + nozzles(nn)*100000 + nozzles(pp)*10000 + nozzles(hh)*1000 + nozzles(tt)*100 + nozzles(oo)*10 + nozzles(uu) ;
                                                                                        c = c+1 ;
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        nozzle20temp = unique(nozzle20temp) ;
        nozzle20 = zeros(length(nozzle20temp)-1,20) ;
        for i=1:length(nozzle20temp)-1
            nozzle20(i,:) = breaker(nozzle20temp(i+1,1)) ;
        end
        for i=1:length(nozzle20temp)-1
            for j=1:20
                CFM(e,j) = nozzle20 (i,j) ;
            end
            e = e+1 ;
        end
    end
    CFMtable(1,1:q) = ["Nozzle"] ;
    CFMtable(1,q+1) = ["CFM min"] ;
    CFMtable(1,q+2) = ["CFM max"] ;
    CFMtable(2:e,:) = '' ;
    for i=1:e-1
        mn = 0 ;
        mx = 0 ;
        for j=1:q
            CFMtable(i+1,j) = CFM(i,j) ;
            if CFM(i,j)>0
                mn = mn +  FlowNozzle(CFM(i,j),7) ;
                mx = mx +  FlowNozzle(CFM(i,j),8) ;
            end
        end
        CFMtable(i+1,q+1) = mn ;
        CFMtable(i+1,q+2) = mx ;
    end
    xlswrite('CFMtable.xlsx',CFMtable) ;