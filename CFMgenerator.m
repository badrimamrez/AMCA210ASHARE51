function CFMgenerator(SZ,MinF,MaxF,Tlc)
    Vmin = 15 ; %m/s
    Vmax = 35 ; %m/s
    D = SZ ;
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
    k2 = counter(2,D) ;
    TwoNozzles = zeros(k2,4) ;
    c = 1 ;
    for i1=1:D
        for i2=i1:D
            TwoNozzles (c,1) = i1 ;
            TwoNozzles (c,2) = i2 ;
            TwoNozzles (c,3) = FlowNozzle(i1,7) + FlowNozzle(i2,7);
            TwoNozzles (c,4) = FlowNozzle(i1,8) + FlowNozzle(i2,8);
            c = c+1 ;
        end
    end
    k3 = counter(3,D) ;
    ThreeNozzles = zeros (k3,5) ;
    c = 1 ;
    for i1=1:D
        for i2=i1:D
            for i3=i2:D
                ThreeNozzles (c,1) = i1 ;
                ThreeNozzles (c,2) = i2 ;
                ThreeNozzles (c,3) = i3 ;
                ThreeNozzles (c,4) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) ;
                ThreeNozzles (c,5) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) ;
                c = c+1 ;
            end
        end
    end
    k4 = counter(4,D) ;
    FourNozzles = zeros (k4,6) ;
    c = 1 ;
    for i1=1:D
        for i2=i1:D
            for i3=i2:D
                for i4=i3:D
                    FourNozzles (c,1) = i1 ;
                    FourNozzles (c,2) = i2 ;
                    FourNozzles (c,3) = i3 ;
                    FourNozzles (c,4) = i4 ;
                    FourNozzles (c,5) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) ;
                    FourNozzles (c,6) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) ; 
                    c = c+1 ;
                end
            end
        end
    end
    k5 = counter(5,D) ;
    FiveNozzles = zeros (k5,7) ;
    c = 1 ;
    for i1=1:D
        for i2=i1:D
            for i3=i2:D
                for i4=i3:D
                    for i5=i4:D
                        FiveNozzles (c,1) = i1 ;
                        FiveNozzles (c,2) = i2 ;
                        FiveNozzles (c,3) = i3 ;
                        FiveNozzles (c,4) = i4 ;
                        FiveNozzles (c,5) = i5 ;
                        FiveNozzles (c,6) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) ;
                        FiveNozzles (c,7) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) ; 
                        c = c+1 ;
                    end
                end
            end
        end
    end
    k6 = counter(6,D) ;
    SixNozzles = zeros (k6,8) ;
    c = 1 ;
    for i1=1:D
        for i2=i1:D
            for i3=i2:D
                for i4=i3:D
                    for i5=i4:D
                        for i6=i5:D
                            SixNozzles (c,1) = i1 ;
                            SixNozzles (c,2) = i2 ;
                            SixNozzles (c,3) = i3 ;
                            SixNozzles (c,4) = i4 ;
                            SixNozzles (c,5) = i5 ;
                            SixNozzles (c,6) = i6 ;
                            SixNozzles (c,7) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) ;
                            SixNozzles (c,8) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) ; 
                            c = c+1 ;
                        end
                    end
                end
            end
        end
    end
    k7 = counter(7,D) ;
    Se7enNozzles = zeros (k7,9) ;
    c = 1 ;
    for i1=1:D
        for i2=i1:D
            for i3=i2:D
                for i4=i3:D
                    for i5=i4:D
                        for i6=i5:D
                            for i7=i6:D
                                Se7enNozzles (c,1) = i1 ;
                                Se7enNozzles (c,2) = i2 ;
                                Se7enNozzles (c,3) = i3 ;
                                Se7enNozzles (c,4) = i4 ;
                                Se7enNozzles (c,5) = i5 ;
                                Se7enNozzles (c,6) = i6 ;
                                Se7enNozzles (c,7) = i7 ;
                                Se7enNozzles (c,8) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) ;
                                Se7enNozzles (c,9) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) ; 
                                c = c+1 ;
                            end
                        end
                    end
                end
            end
        end
    end
    k8 = counter(8,D) ;
    EightNozzles = zeros (k8,10) ;
    c = 1 ;
    for i1=1:D
        for i2=i1:D
            for i3=i2:D
                for i4=i3:D
                    for i5=i4:D
                        for i6=i5:D
                            for i7=i6:D
                                for i8=i7:D
                                    EightNozzles (c,1) = i1 ;
                                    EightNozzles (c,2) = i2 ;
                                    EightNozzles (c,3) = i3 ;
                                    EightNozzles (c,4) = i4 ;
                                    EightNozzles (c,5) = i5 ;
                                    EightNozzles (c,6) = i6 ;
                                    EightNozzles (c,7) = i7 ;
                                    EightNozzles (c,8) = i8 ;
                                    EightNozzles (c,9) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) ;
                                    EightNozzles (c,10) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) ; 
                                    c = c+1 ;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    k9 = counter(9,D) ;
    NineNozzles = zeros (k9,11) ;
    c = 1 ;
    for i1=1:D
        for i2=i1:D
            for i3=i2:D
                for i4=i3:D
                    for i5=i4:D
                        for i6=i5:D
                            for i7=i6:D
                                for i8=i7:D
                                    for i9=i8:D
                                        NineNozzles (c,1) = i1 ;
                                        NineNozzles (c,2) = i2 ;
                                        NineNozzles (c,3) = i3 ;
                                        NineNozzles (c,4) = i4 ;
                                        NineNozzles (c,5) = i5 ;
                                        NineNozzles (c,6) = i6 ;
                                        NineNozzles (c,7) = i7 ;
                                        NineNozzles (c,8) = i8 ;
                                        NineNozzles (c,9) = i9 ;
                                        NineNozzles (c,10) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) ;
                                        NineNozzles (c,11) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) ;
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
    k10 = counter(10,D) ;
    TenNozzles = zeros (k10,12) ;
    c = 1 ;
    for i1=1:D
        for i2=i1:D
            for i3=i2:D
                for i4=i3:D
                    for i5=i4:D
                        for i6=i5:D
                            for i7=i6:D
                                for i8=i7:D
                                    for i9=i8:D
                                        for i10=i9:D
                                            TenNozzles (c,1) = i1 ;
                                            TenNozzles (c,2) = i2 ;
                                            TenNozzles (c,3) = i3 ;
                                            TenNozzles (c,4) = i4 ;
                                            TenNozzles (c,5) = i5 ;
                                            TenNozzles (c,6) = i6 ;
                                            TenNozzles (c,7) = i7 ;
                                            TenNozzles (c,8) = i8 ;
                                            TenNozzles (c,9) = i9 ;
                                            TenNozzles (c,10) = i10 ;
                                            TenNozzles (c,11) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) ;
                                            TenNozzles (c,12) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) ;
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
    % k11 = counter(11,D) ;
    % ElevenNozzles = zeros (k11,13) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             ElevenNozzles (c,1) = i1 ;
    %                                             ElevenNozzles (c,2) = i2 ;
    %                                             ElevenNozzles (c,3) = i3 ;
    %                                             ElevenNozzles (c,4) = i4 ;
    %                                             ElevenNozzles (c,5) = i5 ;
    %                                             ElevenNozzles (c,6) = i6 ;
    %                                             ElevenNozzles (c,7) = i7 ;
    %                                             ElevenNozzles (c,8) = i8 ;
    %                                             ElevenNozzles (c,9) = i9 ;
    %                                             ElevenNozzles (c,10) = i10 ;
    %                                             ElevenNozzles (c,11) = i11 ;
    %                                             ElevenNozzles (c,12) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) ;
    %                                             ElevenNozzles (c,13) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) ;
    %                                             c = c+1 ;
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    % k12 = counter(12,D) ;
    % TwelveNozzles = zeros (k12,14) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             for i12=i11:D
    %                                                 TwelveNozzles (c,1) = i1 ;
    %                                                 TwelveNozzles (c,2) = i2 ;
    %                                                 TwelveNozzles (c,3) = i3 ;
    %                                                 TwelveNozzles (c,4) = i4 ;
    %                                                 TwelveNozzles (c,5) = i5 ;
    %                                                 TwelveNozzles (c,6) = i6 ;
    %                                                 TwelveNozzles (c,7) = i7 ;
    %                                                 TwelveNozzles (c,8) = i8 ;
    %                                                 TwelveNozzles (c,9) = i9 ;
    %                                                 TwelveNozzles (c,10) = i10 ;
    %                                                 TwelveNozzles (c,11) = i11 ;
    %                                                 TwelveNozzles (c,12) = i12 ;
    %                                                 TwelveNozzles (c,13) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) + FlowNozzle (i12,7) ;
    %                                                 TwelveNozzles (c,14) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) + FlowNozzle (i12,8) ;
    %                                                 c = c+1 ;
    %                                             end
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    % k13 = counter(13,D) ;
    % ThirteenNozzles = zeros (k13,15) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             for i12=i11:D
    %                                                 for i13=i12:D
    %                                                     ThirteenNozzles (c,1) = i1 ;
    %                                                     ThirteenNozzles (c,2) = i2 ;
    %                                                     ThirteenNozzles (c,3) = i3 ;
    %                                                     ThirteenNozzles (c,4) = i4 ;
    %                                                     ThirteenNozzles (c,5) = i5 ;
    %                                                     ThirteenNozzles (c,6) = i6 ;
    %                                                     ThirteenNozzles (c,7) = i7 ;
    %                                                     ThirteenNozzles (c,8) = i8 ;
    %                                                     ThirteenNozzles (c,9) = i9 ;
    %                                                     ThirteenNozzles (c,10) = i10 ;
    %                                                     ThirteenNozzles (c,11) = i11 ;
    %                                                     ThirteenNozzles (c,12) = i12 ;
    %                                                     ThirteenNozzles (c,13) = i13 ;
    %                                                     ThirteenNozzles (c,14) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) + FlowNozzle (i12,7) + FlowNozzle (i13,7) ;
    %                                                     ThirteenNozzles (c,15) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) + FlowNozzle (i12,8) + FlowNozzle (i13,8) ;
    %                                                     c = c+1 ;
    %                                                 end
    %                                             end
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    % k14 = counter(14,D) ;
    % FourteenNozzles = zeros (k14,16) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             for i12=i11:D
    %                                                 for i13=i12:D
    %                                                     for i14=i13:D
    %                                                         FourteenNozzles (c,1) = i1 ;
    %                                                         FourteenNozzles (c,2) = i2 ;
    %                                                         FourteenNozzles (c,3) = i3 ;
    %                                                         FourteenNozzles (c,4) = i4 ;
    %                                                         FourteenNozzles (c,5) = i5 ;
    %                                                         FourteenNozzles (c,6) = i6 ;
    %                                                         FourteenNozzles (c,7) = i7 ;
    %                                                         FourteenNozzles (c,8) = i8 ;
    %                                                         FourteenNozzles (c,9) = i9 ;
    %                                                         FourteenNozzles (c,10) = i10 ;
    %                                                         FourteenNozzles (c,11) = i11 ;
    %                                                         FourteenNozzles (c,12) = i12 ;
    %                                                         FourteenNozzles (c,13) = i13 ;
    %                                                         FourteenNozzles (c,14) = i14 ;
    %                                                         FourteenNozzles (c,15) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) + FlowNozzle (i12,7) + FlowNozzle (i13,7) + FlowNozzle (i14,7) ;
    %                                                         FourteenNozzles (c,16) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) + FlowNozzle (i12,8) + FlowNozzle (i13,8) + FlowNozzle (i14,8) ;
    %                                                         c = c+1 ;
    %                                                     end
    %                                                 end
    %                                             end
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    % k15 = counter(15,D) ;
    % FifteenNozzles = zeros (k15,17) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             for i12=i11:D
    %                                                 for i13=i12:D
    %                                                     for i14=i13:D
    %                                                         for i15=i14:D
    %                                                             FifteenNozzles (c,1) = i1 ;
    %                                                             FifteenNozzles (c,2) = i2 ;
    %                                                             FifteenNozzles (c,3) = i3 ;
    %                                                             FifteenNozzles (c,4) = i4 ;
    %                                                             FifteenNozzles (c,5) = i5 ;
    %                                                             FifteenNozzles (c,6) = i6 ;
    %                                                             FifteenNozzles (c,7) = i7 ;
    %                                                             FifteenNozzles (c,8) = i8 ;
    %                                                             FifteenNozzles (c,9) = i9 ;
    %                                                             FifteenNozzles (c,10) = i10 ;
    %                                                             FifteenNozzles (c,11) = i11 ;
    %                                                             FifteenNozzles (c,12) = i12 ;
    %                                                             FifteenNozzles (c,13) = i13 ;
    %                                                             FifteenNozzles (c,14) = i14 ;
    %                                                             FifteenNozzles (c,15) = i15 ;
    %                                                             FifteenNozzles (c,16) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) + FlowNozzle (i12,7) + FlowNozzle (i13,7) + FlowNozzle (i14,7) + FlowNozzle (i15,7) ;
    %                                                             FifteenNozzles (c,17) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) + FlowNozzle (i12,8) + FlowNozzle (i13,8) + FlowNozzle (i14,8) + FlowNozzle (i15,8) ;
    %                                                             c = c+1 ;
    %                                                         end
    %                                                     end
    %                                                 end
    %                                             end
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    % k16 = counter(16,D) ;
    % SixteenNozzles = zeros (k16,18) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             for i12=i11:D
    %                                                 for i13=i12:D
    %                                                     for i14=i13:D
    %                                                         for i15=i14:D
    %                                                             for i16=i15:D
    %                                                                 SixteenNozzles (c,1) = i1 ;
    %                                                                 SixteenNozzles (c,2) = i2 ;
    %                                                                 SixteenNozzles (c,3) = i3 ;
    %                                                                 SixteenNozzles (c,4) = i4 ;
    %                                                                 SixteenNozzles (c,5) = i5 ;
    %                                                                 SixteenNozzles (c,6) = i6 ;
    %                                                                 SixteenNozzles (c,7) = i7 ;
    %                                                                 SixteenNozzles (c,8) = i8 ;
    %                                                                 SixteenNozzles (c,9) = i9 ;
    %                                                                 SixteenNozzles (c,10) = i10 ;
    %                                                                 SixteenNozzles (c,11) = i11 ;
    %                                                                 SixteenNozzles (c,12) = i12 ;
    %                                                                 SixteenNozzles (c,13) = i13 ;
    %                                                                 SixteenNozzles (c,14) = i14 ;
    %                                                                 SixteenNozzles (c,15) = i15 ;
    %                                                                 SixteenNozzles (c,16) = i16 ;
    %                                                                 SixteenNozzles (c,17) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) + FlowNozzle (i12,7) + FlowNozzle (i13,7) + FlowNozzle (i14,7) + FlowNozzle (i15,7) + FlowNozzle (i16,7) ;
    %                                                                 SixteenNozzles (c,18) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) + FlowNozzle (i12,8) + FlowNozzle (i13,8) + FlowNozzle (i14,8) + FlowNozzle (i15,8) + FlowNozzle (i16,8) ;
    %                                                                 c = c+1 ;
    %                                                             end
    %                                                         end
    %                                                     end
    %                                                 end
    %                                             end
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    % k17 = counter(17,D) ;
    % Se7enteenNozzles = zeros (k17,19) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             for i12=i11:D
    %                                                 for i13=i12:D
    %                                                     for i14=i13:D
    %                                                         for i15=i14:D
    %                                                             for i16=i15:D
    %                                                                 for i17=i16:D
    %                                                                     Se7enteenNozzles (c,1) = i1 ;
    %                                                                     Se7enteenNozzles (c,2) = i2 ;
    %                                                                     Se7enteenNozzles (c,3) = i3 ;
    %                                                                     Se7enteenNozzles (c,4) = i4 ;
    %                                                                     Se7enteenNozzles (c,5) = i5 ;
    %                                                                     Se7enteenNozzles (c,6) = i6 ;
    %                                                                     Se7enteenNozzles (c,7) = i7 ;
    %                                                                     Se7enteenNozzles (c,8) = i8 ;
    %                                                                     Se7enteenNozzles (c,9) = i9 ;
    %                                                                     Se7enteenNozzles (c,10) = i10 ;
    %                                                                     Se7enteenNozzles (c,11) = i11 ;
    %                                                                     Se7enteenNozzles (c,12) = i12 ;
    %                                                                     Se7enteenNozzles (c,13) = i13 ;
    %                                                                     Se7enteenNozzles (c,14) = i14 ;
    %                                                                     Se7enteenNozzles (c,15) = i15 ;
    %                                                                     Se7enteenNozzles (c,16) = i16 ;
    %                                                                     Se7enteenNozzles (c,17) = i17 ;
    %                                                                     Se7enteenNozzles (c,18) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) + FlowNozzle (i12,7) + FlowNozzle (i13,7) + FlowNozzle (i14,7) + FlowNozzle (i15,7) + FlowNozzle (i16,7) + FlowNozzle (i17,7) ;
    %                                                                     Se7enteenNozzles (c,19) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) + FlowNozzle (i12,8) + FlowNozzle (i13,8) + FlowNozzle (i14,8) + FlowNozzle (i15,8) + FlowNozzle (i16,8) + FlowNozzle (i17,8) ;
    %                                                                     c = c+1 ;
    %                                                                 end
    %                                                             end
    %                                                         end
    %                                                     end
    %                                                 end
    %                                             end
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    % k18 = counter(18,D) ;
    % EighteenNozzles = zeros (k18,20) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             for i12=i11:D
    %                                                 for i13=i12:D
    %                                                     for i14=i13:D
    %                                                         for i15=i14:D
    %                                                             for i16=i15:D
    %                                                                 for i17=i16:D
    %                                                                     for i18=i17:D
    %                                                                         EighteenNozzles (c,1) = i1 ;
    %                                                                         EighteenNozzles (c,2) = i2 ;
    %                                                                         EighteenNozzles (c,3) = i3 ;
    %                                                                         EighteenNozzles (c,4) = i4 ;
    %                                                                         EighteenNozzles (c,5) = i5 ;
    %                                                                         EighteenNozzles (c,6) = i6 ;
    %                                                                         EighteenNozzles (c,7) = i7 ;
    %                                                                         EighteenNozzles (c,8) = i8 ;
    %                                                                         EighteenNozzles (c,9) = i9 ;
    %                                                                         EighteenNozzles (c,10) = i10 ;
    %                                                                         EighteenNozzles (c,11) = i11 ;
    %                                                                         EighteenNozzles (c,12) = i12 ;
    %                                                                         EighteenNozzles (c,13) = i13 ;
    %                                                                         EighteenNozzles (c,14) = i14 ;
    %                                                                         EighteenNozzles (c,15) = i15 ;
    %                                                                         EighteenNozzles (c,16) = i16 ;
    %                                                                         EighteenNozzles (c,17) = i17 ;
    %                                                                         EighteenNozzles (c,18) = i18 ;
    %                                                                         EighteenNozzles (c,19) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) + FlowNozzle (i12,7) + FlowNozzle (i13,7) + FlowNozzle (i14,7) + FlowNozzle (i15,7) + FlowNozzle (i16,7) + FlowNozzle (i17,7) + FlowNozzle (i18,7) ;
    %                                                                         EighteenNozzles (c,20) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) + FlowNozzle (i12,8) + FlowNozzle (i13,8) + FlowNozzle (i14,8) + FlowNozzle (i15,8) + FlowNozzle (i16,8) + FlowNozzle (i17,8) + FlowNozzle (i18,8) ;
    %                                                                         c = c+1 ;
    %                                                                     end
    %                                                                 end
    %                                                             end
    %                                                         end
    %                                                     end
    %                                                 end
    %                                             end
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    % k19 = counter(19,D) ;
    % NineteenNozzles = zeros (k19,21) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             for i12=i11:D
    %                                                 for i13=i12:D
    %                                                     for i14=i13:D
    %                                                         for i15=i14:D
    %                                                             for i16=i15:D
    %                                                                 for i17=i16:D
    %                                                                     for i18=i17:D
    %                                                                         for i19=i18:D
    %                                                                             NineteenNozzles (c,1) = i1 ;
    %                                                                             NineteenNozzles (c,2) = i2 ;
    %                                                                             NineteenNozzles (c,3) = i3 ;
    %                                                                             NineteenNozzles (c,4) = i4 ;
    %                                                                             NineteenNozzles (c,5) = i5 ;
    %                                                                             NineteenNozzles (c,6) = i6 ;
    %                                                                             NineteenNozzles (c,7) = i7 ;
    %                                                                             NineteenNozzles (c,8) = i8 ;
    %                                                                             NineteenNozzles (c,9) = i9 ;
    %                                                                             NineteenNozzles (c,10) = i10 ;
    %                                                                             NineteenNozzles (c,11) = i11 ;
    %                                                                             NineteenNozzles (c,12) = i12 ;
    %                                                                             NineteenNozzles (c,13) = i13 ;
    %                                                                             NineteenNozzles (c,14) = i14 ;
    %                                                                             NineteenNozzles (c,15) = i15 ;
    %                                                                             NineteenNozzles (c,16) = i16 ;
    %                                                                             NineteenNozzles (c,17) = i17 ;
    %                                                                             NineteenNozzles (c,18) = i18 ;
    %                                                                             NineteenNozzles (c,19) = i19 ;
    %                                                                             NineteenNozzles (c,20) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) + FlowNozzle (i12,7) + FlowNozzle (i13,7) + FlowNozzle (i14,7) + FlowNozzle (i15,7) + FlowNozzle (i16,7) + FlowNozzle (i17,7) + FlowNozzle (i18,7) + FlowNozzle (i19,7) ;
    %                                                                             NineteenNozzles (c,21) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) + FlowNozzle (i12,8) + FlowNozzle (i13,8) + FlowNozzle (i14,8) + FlowNozzle (i15,8) + FlowNozzle (i16,8) + FlowNozzle (i17,8) + FlowNozzle (i18,8) + FlowNozzle (i19,8) ;
    %                                                                             c = c+1 ;
    %                                                                         end
    %                                                                     end
    %                                                                 end
    %                                                             end
    %                                                         end
    %                                                     end
    %                                                 end
    %                                             end
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    % k20 = counter(20,D) ;
    % TwentyNozzles = zeros (k20,22) ;
    % c = 1 ;
    % for i1=1:D
    %     for i2=i1:D
    %         for i3=i2:D
    %             for i4=i3:D
    %                 for i5=i4:D
    %                     for i6=i5:D
    %                         for i7=i6:D
    %                             for i8=i7:D
    %                                 for i9=i8:D
    %                                     for i10=i9:D
    %                                         for i11=i10:D
    %                                             for i12=i11:D
    %                                                 for i13=i12:D
    %                                                     for i14=i13:D
    %                                                         for i15=i14:D
    %                                                             for i16=i15:D
    %                                                                 for i17=i16:D
    %                                                                     for i18=i17:D
    %                                                                         for i19=i18:D
    %                                                                             for i20=i19:D
    %                                                                                 TwentyNozzles (c,1) = i1 ;
    %                                                                                 TwentyNozzles (c,2) = i2 ;
    %                                                                                 TwentyNozzles (c,3) = i3 ;
    %                                                                                 TwentyNozzles (c,4) = i4 ;
    %                                                                                 TwentyNozzles (c,5) = i5 ;
    %                                                                                 TwentyNozzles (c,6) = i6 ;
    %                                                                                 TwentyNozzles (c,7) = i7 ;
    %                                                                                 TwentyNozzles (c,8) = i8 ;
    %                                                                                 TwentyNozzles (c,9) = i9 ;
    %                                                                                 TwentyNozzles (c,10) = i10 ;
    %                                                                                 TwentyNozzles (c,11) = i11 ;
    %                                                                                 TwentyNozzles (c,12) = i12 ;
    %                                                                                 TwentyNozzles (c,13) = i13 ;
    %                                                                                 TwentyNozzles (c,14) = i14 ;
    %                                                                                 TwentyNozzles (c,15) = i15 ;
    %                                                                                 TwentyNozzles (c,16) = i16 ;
    %                                                                                 TwentyNozzles (c,17) = i17 ;
    %                                                                                 TwentyNozzles (c,18) = i18 ;
    %                                                                                 TwentyNozzles (c,19) = i19 ;
    %                                                                                 TwentyNozzles (c,20) = i20 ;
    %                                                                                 TwentyNozzles (c,21) = FlowNozzle (i1,7) + FlowNozzle (i2,7) + FlowNozzle (i3,7) + FlowNozzle (i4,7) + FlowNozzle (i5,7) + FlowNozzle (i6,7) + FlowNozzle (i7,7) + FlowNozzle (i8,7) + FlowNozzle (i9,7) + FlowNozzle (i10,7) + FlowNozzle (i11,7) + FlowNozzle (i12,7) + FlowNozzle (i13,7) + FlowNozzle (i14,7) + FlowNozzle (i15,7) + FlowNozzle (i16,7) + FlowNozzle (i17,7) + FlowNozzle (i18,7) + FlowNozzle (i19,7) + FlowNozzle (i20,7) ;
    %                                                                                 TwentyNozzles (c,22) = FlowNozzle (i1,8) + FlowNozzle (i2,8) + FlowNozzle (i3,8) + FlowNozzle (i4,8) + FlowNozzle (i5,8) + FlowNozzle (i6,8) + FlowNozzle (i7,8) + FlowNozzle (i8,8) + FlowNozzle (i9,8) + FlowNozzle (i10,8) + FlowNozzle (i11,8) + FlowNozzle (i12,8) + FlowNozzle (i13,8) + FlowNozzle (i14,8) + FlowNozzle (i15,8) + FlowNozzle (i16,8) + FlowNozzle (i17,8) + FlowNozzle (i18,8) + FlowNozzle (i19,8) + FlowNozzle (i20,8) ;
    %                                                                                 c = c+1 ;
    %                                                                             end
    %                                                                         end
    %                                                                     end
    %                                                                 end
    %                                                             end
    %                                                         end
    %                                                     end
    %                                                 end
    %                                             end
    %                                         end
    %                                     end
    %                                 end
    %                             end
    %                         end
    %                     end
    %                 end
    %             end
    %         end
    %     end
    % end
    MinFlow = MinF ;
    %MinFlow = 5000 ;
    MaxFlow = MaxF ;
    %MaxFlow = 20000 ;
    Tolerance = Tlc ;
    %Tolerance = 10 ;
    Tolerance = 1 + Tolerance/100 ;
    Options = zeros (100000,24) ;
    c = 1 ;
    for i=1:D
        if FlowNozzle(i,8) >= MaxFlow && FlowNozzle(i,8) <= Tolerance * MaxFlow  && FlowNozzle(i,7) < MinFlow
            Options (c,1) = FlowNozzle (i,1) ;
            Options (c,21) = FlowNozzle (i,7) ;
            Options (c,22) = FlowNozzle (i,8) ;
            Options (c,23) = 1 ;
            Options (c,24) = 9*(i^2) ;
            c = c+1 ;
        end
    end
    for i=1:k2
        if TwoNozzles(i,4) >= MaxFlow && TwoNozzles(i,4) <= Tolerance * MaxFlow && FlowNozzle(TwoNozzles(i,1),7) < MinFlow
            for j=1:2
            Options (c,j) = TwoNozzles (i,j) ;
            end
            Options (c,21) = TwoNozzles (i,j+1) ;
            Options (c,22) = TwoNozzles (i,j+2) ;
            Options (c,23) = 2 ;
            Options (c,24) = (3*Options(c,2))*(4.5*Options(c,2)+1.5*Options(c,1)) ;
            c = c+1 ;
        end
    end
    for i=1:k3
        if ThreeNozzles(i,5) >= MaxFlow && ThreeNozzles(i,5) <= Tolerance * MaxFlow && FlowNozzle(ThreeNozzles(i,1),7) < MinFlow
            for j=1:3
                Options (c,j) = ThreeNozzles (i,j) ;
            end
            Options (c,21) = ThreeNozzles (i,j+1) ;
            Options (c,22) = ThreeNozzles (i,j+2) ;
            Options (c,23) = 3 ;
            if Options(c,1) == Options(c,3)
                Options(c,24) = (18+9*sqrt(3))*(Options(c,3)^2) ;
            elseif Options(c,2) == Options(c,3)
                Options(c,24) = (6*Options(c,3))*(1.5*Options(c,1)+(1.5+1.5*sqrt(3))*Options(c,3)) ;
            elseif Options(c,1) == Options(c,2)
                DS = [3*Options(c,3) , 6*Options(c,1)] ;
                M = max(DS) ;
                Options(c,24) = M * (1.5*Options(c,1) + 1.5*Options(c,3) + sqrt(9*(Options(c,3)^2)-2.25*(Options(c,1)^2))) ;
            else
                DS = [3*Options(c,3) , 4.5*Options(c,2)+1.5*Options(c,1)] ;
                M = max(DS) ;
                Options(c,24) = M * (1.5*Options(c,2) + 1.5*Options(c,3) + sqrt(9*(Options(c,3)^2)-2.25*(Options(c,2)^2))) ;
            end
            c = c+1 ;
        end
    end
    for i=1:k4
        if FourNozzles(i,6) >= MaxFlow && FourNozzles(i,6) <= Tolerance * MaxFlow && FlowNozzle(FourNozzles(i,1),7) < MinFlow
            for j=1:4
                Options (c,j) = FourNozzles (i,j) ;
            end
            Options (c,21) = FourNozzles (i,j+1) ;
            Options (c,22) = FourNozzles (i,j+2) ;
            Options (c,23) = 4 ;
            if Options(c,1) == Options(c,4)
                Options(c,24) = ((3+3*sqrt(2))*Options(c,4))^2 ;
            elseif Options(c,1) ~= Options(c,2) && Options(c,2) == Options(c,3) && Options(c,3) ~= Options(c,4)
                S1 = 0 ;
                if 1.5*sqrt(3)*Options(c,2) + sqrt(9*Options(c,4)^2-(9/4)*Options(c,2)^2) >= 3*Options(c,4)
                    S1 = (6*Options(c,2)) * (1.5*Options(c,4) + 1.5*Options(c,1) + 1.5*sqrt(3)*Options(c,2) + sqrt(9*Options(c,4)^2-(9/4)*Options(c,2)^2)) ;
                end
                S2 = (4.5*Options(c,4)+1.5*Options(c,1)) * (3*Options(c,2) + 2*(Options(c,2)/Options(c,4))*sqrt(9*Options(c,4)^2-(9/4)*Options(c,2)^2)) ;
                if S1 ~= 0 && S1 < S2
                    Options(c,24) = S1 ;
                else
                    Options(c,24) = S2 ;
                end
            else
                S1 = 0 ;
                if sqrt(9*Options(c,3)^2-(9/4)*Options(c,2)^2) + sqrt(9*Options(c,4)^2-(9/4)*Options(c,2)^2) >= 3*Options(c,4)
                    S1 = (4.5*Options(c,2)+1.5*Options(c,1)) * (1.5*Options(c,4) + 1.5*Options(c,3) + sqrt(9*Options(c,3)^2-(9/4)*Options(c,2)^2) + sqrt(9*Options(c,4)^2-(9/4)*Options(c,2)^2)) ;
                end
                S2 = (4.5*Options(c,4)+1.5*Options(c,3)) * (1.5*Options(c,4) + 1.5*Options(c,3) + 2*(Options(c,3)/Options(c,4))*sqrt(9*Options(c,4)^2-(9/4)*Options(c,3)^2) ) ;
                if S1 ~= 0 && S1 < S2
                    Options(c,24) = S1 ;
                else
                    Options(c,24) = S2 ;
                end
            end
            c = c+1 ;
        end
    end
    for i=1:k5
        if FiveNozzles(i,7) >= MaxFlow && FiveNozzles(i,7) <= Tolerance * MaxFlow && FlowNozzle(FiveNozzles(i,1),7) < MinFlow
            for j=1:5
                Options (c,j) = FiveNozzles (i,j) ;
            end
            Options (c,21) = FiveNozzles (i,j+1) ;
            Options (c,22) = FiveNozzles (i,j+2) ;
            Options (c,23) = 5 ;
            D5 = Options(c,5) ;
            D4 = Options(c,4) ;
            D3 = Options(c,3) ;
            D2 = Options(c,2) ;
            D1 = Options(c,1) ;
            if D5 == D2
                Options(c,24) = (6*D5) * (3*D5 + sqrt(9*D5^2 - 2.25*D5^2));
            elseif D4 == D1
                S1 = (3*sqrt(2)*D5 + 3*D1)^2 ;
                S2 = (6*D1) * ((3*D1) + 2*sqrt((3*D5)^2 - (1.5*D1)^2)) ;
                if S1 < S2
                    Options(c,24) = S1 ;
                else
                    Options(c,24) = S2 ;
                end
            else
                Options(c,24) = (3*sqrt(2)*D5 + 1.5*D4 + 1.5*D3) * (3*sqrt(2)*D5 + 1.5*D4 + 1.5*D2) ;
            end
            c = c+1 ;
        end
    end
    for i=1:k6
        if SixNozzles(i,8) >= MaxFlow && SixNozzles(i,8) <= Tolerance * MaxFlow && FlowNozzle(SixNozzles(i,1),7) < MinFlow
            for j=1:6
                Options (c,j) = SixNozzles (i,j) ;
            end
            Options (c,21) = SixNozzles (i,j+1) ;
            Options (c,22) = SixNozzles (i,j+2) ;
            Options (c,23) = 6 ;
            D6 = Options(c,6) ;
            D5 = Options(c,5) ;
            D4 = Options(c,4) ;
            D3 = Options(c,3) ;
            D2 = Options(c,2) ;
            D1 = Options(c,1) ;
            Options (c,24) = (1.5*D5 + 3*D6 + 1.5*D2 + 3*D6*cos(pi/5)) * (1.5*D4 + 1.5*D3 + 6*D6*sin(2*pi/5)) ;
            c = c+1 ;
        end
    end
    for i=1:k7
        if Se7enNozzles(i,9) >= MaxFlow && Se7enNozzles(i,9) <= Tolerance * MaxFlow && FlowNozzle(Se7enNozzles(i,1),7) < MinFlow
            for j=1:7
                Options (c,j) = Se7enNozzles (i,j) ;
            end
            Options (c,21) = Se7enNozzles (i,j+1) ;
            Options (c,22) = Se7enNozzles (i,j+2) ;
            Options (c,23) = 7 ;
            D7 = Options(c,7) ;
            D6 = Options(c,6) ;
            D5 = Options(c,5) ;
            D4 = Options(c,4) ;
            D3 = Options(c,3) ;
            D2 = Options(c,2) ;
            D1 = Options(c,1) ;
            Options (c,24) = (6*D7 + 1.5*D4 + 1.5*D3) * (3*sqrt(3)*D7 + 1.5*D6 + 1.5*D5) ;
            c = c+1 ;
        end
    end
    for i=1:k8
        if EightNozzles(i,10) >= MaxFlow && EightNozzles(i,10) <= Tolerance * MaxFlow && FlowNozzle(EightNozzles(i,1),7) < MinFlow
            for j=1:8
                Options (c,j) = EightNozzles (i,j) ;
            end
            Options (c,21) = EightNozzles (i,j+1) ;
            Options (c,22) = EightNozzles (i,j+2) ;
            Options (c,23) = 8 ;
            D8 = Options(c,8) ;
            D7 = Options(c,7) ;
            D6 = Options(c,6) ;
            D5 = Options(c,5) ;
            D4 = Options(c,4) ;
            D3 = Options(c,3) ;
            D2 = Options(c,2) ;
            D1 = Options(c,1) ;
            Options (c,24) = (4.5*D8 + 1.5*D7 + 1.5*D4 + 1.5*D2) * (3*sqrt(3)*D8 + 1.5*D6 + 1.5*D5) ;
            c = c+1 ;
        end
    end
    for i=1:k9
        if NineNozzles(i,11) >= MaxFlow && NineNozzles(i,11) <= Tolerance * MaxFlow && FlowNozzle(NineNozzles(i,1),7) < MinFlow
            for j=1:9
                Options (c,j) = NineNozzles (i,j) ;
            end
            Options (c,21) = NineNozzles (i,j+1) ;
            Options (c,22) = NineNozzles (i,j+2) ;
            Options (c,23) = 9 ;
            D9 = Options(c,9) ;
            D8 = Options(c,8) ;
            D7 = Options(c,7) ;
            D6 = Options(c,6) ;
            D5 = Options(c,5) ;
            D4 = Options(c,4) ;
            D3 = Options(c,3) ;
            D2 = Options(c,2) ;
            D1 = Options(c,1) ;
            Options (c,24) = (6*D9 + 1.5*D8 + 1.5*D7) * (6*D9 + 1.5*D6 + 1.5*D5) ;
            c = c+1 ;
        end
    end
    for i=1:k10
        if TenNozzles(i,12) >= MaxFlow && TenNozzles(i,12) <= Tolerance * MaxFlow && FlowNozzle(TenNozzles(i,1),7) < MinFlow
            for j=1:10
                Options (c,j) = TenNozzles (i,j) ;
            end
            Options (c,21) = TenNozzles (i,j+1) ;
            Options (c,22) = TenNozzles (i,j+2) ;
            Options (c,23) = 10 ;
            D10 = Options(c,10) ;
            D9 = Options(c,9) ;
            D8 = Options(c,8) ;
            D7 = Options(c,7) ;
            D6 = Options(c,6) ;
            D5 = Options(c,5) ;
            D4 = Options(c,4) ;
            D3 = Options(c,3) ;
            D2 = Options(c,2) ;
            D1 = Options(c,1) ;
            Options (c,24) = (6*D10 + 3*D7 + 1.5*D4 + 1.5*D3) * (3*sqrt(3)*D10 + 1.5*D9 + 1.5*D8) ;
            c = c+1 ;
        end
    end
    % for i=1:k11
    %     if ElevenNozzles(i,13) >= MaxFlow && ElevenNozzles(i,13) <= Tolerance * MaxFlow && FlowNozzle(ElevenNozzles(i,1),7) < MinFlow
    %         for j=1:11
    %             Options (c,j) = ElevenNozzles (i,j) ;
    %         end
    %         Options (c,21) = ElevenNozzles (i,j+1) ;
    %         Options (c,22) = ElevenNozzles (i,j+2) ;
    %         Options (c,23) = 11 ;
    %         c = c+1 ;
    %     end
    % end
    % for i=1:k12
    %     if TwelveNozzles(i,14) >= MaxFlow && TwelveNozzles(i,14) <= Tolerance * MaxFlow && FlowNozzle(TwelveNozzles(i,1),7) < MinFlow
    %         for j=1:12
    %             Options (c,j) = TwelveNozzles (i,j) ;
    %         end
    %         Options (c,21) = TwelveNozzles (i,j+1) ;
    %         Options (c,22) = TwelveNozzles (i,j+2) ;
    %         Options (c,23) = 12 ;
    %         c = c+1 ;
    %     end
    % end
    % for i=1:k13
    %     if ThirteenNozzles(i,15) >= MaxFlow && ThirteenNozzles(i,15) <= Tolerance * MaxFlow && FlowNozzle(ThirteenNozzles(i,1),7) < MinFlow
    %         for j=1:13
    %             Options (c,j) = ThirteenNozzles (i,j) ;
    %         end
    %         Options (c,21) = ThirteenNozzles (i,j+1) ;
    %         Options (c,22) = ThirteenNozzles (i,j+2) ;
    %         Options (c,23) = 13 ;
    %         c = c+1 ;
    %     end
    % end
    % for i=1:k14
    %     if FourteenNozzles(i,16) >= MaxFlow && FourteenNozzles(i,16) <= Tolerance * MaxFlow && FlowNozzle(FourteenNozzles(i,1),7) < MinFlow
    %         for j=1:14
    %             Options (c,j) = FourteenNozzles (i,j) ;
    %         end
    %         Options (c,21) = FourteenNozzles (i,j+1) ;
    %         Options (c,22) = FourteenNozzles (i,j+2) ;
    %         Options (c,23) = 14 ;
    %         c = c+1 ;
    %     end
    % end
    % for i=1:k15
    %     if FifteenNozzles(i,17) >= MaxFlow && FifteenNozzles(i,17) <= Tolerance * MaxFlow && FlowNozzle(FifteenNozzles(i,1),7) < MinFlow
    %         for j=1:15
    %             Options (c,j) = FifteenNozzles (i,j) ;
    %         end
    %         Options (c,21) = FifteenNozzles (i,j+1) ;
    %         Options (c,22) = FifteenNozzles (i,j+2) ;
    %         Options (c,23) = 15 ;
    %         c = c+1 ;
    %     end
    % end
    % for i=1:k16
    %     if SixteenNozzles(i,18) >= MaxFlow && SixteenNozzles(i,18) <= Tolerance * MaxFlow && FlowNozzle(SixteenNozzles(i,1),7) < MinFlow
    %         for j=1:16
    %             Options (c,j) = SixteenNozzles (i,j) ;
    %         end
    %         Options (c,21) = SixteenNozzles (i,j+1) ;
    %         Options (c,22) = SixteenNozzles (i,j+2) ;
    %         Options (c,23) = 16 ;
    %         c = c+1 ;
    %     end
    % end
    % for i=1:k17
    %     if Se7enteenNozzles(i,19) >= MaxFlow && Se7enteenNozzles(i,19) <= Tolerance * MaxFlow && FlowNozzle(Se7enteenNozzles(i,1),7) < MinFlow
    %         for j=1:17
    %             Options (c,j) = Se7enteenNozzles (i,j) ;
    %         end
    %         Options (c,21) = Se7enteenNozzles (i,j+1) ;
    %         Options (c,22) = Se7enteenNozzles (i,j+2) ;
    %         Options (c,23) = 17 ;
    %         c = c+1 ;
    %     end
    % end
    % for i=1:k18
    %     if EighteenNozzles(i,20) >= MaxFlow && EighteenNozzles(i,20) <= Tolerance * MaxFlow && FlowNozzle(EighteenNozzles(i,1),7) < MinFlow
    %         for j=1:18
    %             Options (c,j) = EighteenNozzles (i,j) ;
    %         end
    %         Options (c,21) = EighteenNozzles (i,j+1) ;
    %         Options (c,22) = EighteenNozzles (i,j+2) ;
    %         Options (c,23) = 18 ;
    %         c = c+1 ;
    %     end
    % end
    % for i=1:k19
    %     if NineteenNozzles(i,21) >= MaxFlow && NineteenNozzles(i,21) <= Tolerance * MaxFlow && FlowNozzle(NineteenNozzles(i,1),7) < MinFlow
    %         for j=1:19
    %             Options (c,j) = NineteenNozzles (i,j) ;
    %         end
    %         Options (c,21) = NineteenNozzles (i,j+1) ;
    %         Options (c,22) = NineteenNozzles (i,j+2) ;
    %         Options (c,23) = 19 ;
    %         c = c+1 ;
    %     end
    % end
    % for i=1:k20
    %     if TwentyNozzles(i,22) >= MaxFlow && TwentyNozzles(i,22) <= Tolerance * MaxFlow && FlowNozzle(TwentyNozzles(i,1),7) < MinFlow
    %         for j=1:20
    %             Options (c,j) = TwentyNozzles (i,j) ;
    %         end
    %         Options (c,21) = TwentyNozzles (i,j+1) ;
    %         Options (c,22) = TwentyNozzles (i,j+2) ;
    %         Options (c,23) = 20 ;
    %         c = c+1 ;
    %     end
    % end
    AllOptions (1,:) = ["No. of nozzles","N1","N2","N3","N4","N5","N6","N7","N8","N9","N10","CFM Max","Area (in2)"]  ; %"N11","N12","N13","N14","N15","N16","N17","N18","N19","N20"
    for i=2:c
        AllOptions (i,1) = Options(i-1,23) ;
        for j=2:11
            AllOptions(i,j) = Options(i-1,j-1) ;
        end
        AllOptions(i,12) = Options(i-1,22) ;
        AllOptions(i,13) = Options(i-1,24) ;
    end
    xlswrite('Options.xlsx',AllOptions) ;
end